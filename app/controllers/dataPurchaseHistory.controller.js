const db = require("../models");
User = db.user
DataPurchaseHistory = db.dataPurchaseHistory

//Get all users include dataPurchaseHistories
exports.findAll = (req, res) => {
    return User.findAll({
        include: ["dataPurchaseHistory"],
    }).then((users) => {
        res.json(users)
    });
};

// Get the dataPurchaseHistories for a given user
exports.findUserById = (req, res) => {
    return User.findByPk(req.params.id, { include: ["dataPurchaseHistory"] })
        .then((user) => {
            // res.json(user)
            res.status(200).send(user);
        });
};

// Get the dataPurchaseHistories for a given dataPurchaseHistory id
exports.findDataPurchaseHistoyById = (req, res) => {
        DataPurchaseHistory.findAll({
            include: [
                {
                    model: db.data,
                    as: "data",
                    attributes: ['datacol']
                }
            ],
            where: { userId: req.params.id, type: req.body.type}
        }
        )
            .then((user) => {
                // res.json(user)
                res.status(200).send(user);
            });
};


//Get All DataPurchaseHistories
exports.getAllDataPurchaseHistories = (req, res) => {
    DataPurchaseHistory.findAll({
        where: {
            voterId: req.params.id
        }
    }).then(result => {
        res.status(200).send(result);
    });
};

//Get One DataPurchaseHistory
exports.getOneDataPurchaseHistory = (req, res) => {
    DataPurchaseHistory.findOne({
        where: {
            id: req.params.id
        }
    })
        .then(result => {
            res.status(200).send(result)
        })
}

//Create New DataPurchaseHistory
exports.createDataPurchaseHistory = async (req, res) => {
    //save new DataPurchaseHistory to database
    DataPurchaseHistory.create({
        categoryId: req.body.categoryId,
        userId: req.body.userId,
        username: req.body.username,
        dataId: req.body.dataId,
        dataname: req.body.dataname,
        voterId: req.body.voterId,
        votedate: req.body.votedate,
    })
    .then(result => {
        res.status(200).send(result);
    })
    .catch(err => {
        res.status(500).send({ message: err.message });
    });
};

// Delete DataPurchaseHistory
exports.deleteDataPurchaseHistory = async (req, res) => {
    try {
        const postDelete = await DataPurchaseHistory.destroy({ where: { id: req.params.id } });
        res.json(postDelete)
    } catch (error) {
        console.log(error)
    }
};
