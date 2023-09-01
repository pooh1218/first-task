const db = require("../models");
User = db.user
PurchaseHistory = db.purchaseHistory

//Get all users include dataPurchaseHistories
exports.findAll = (req, res) => {
    return PurchaseHistory.findAll({
        include: ["user"],
    }).then((users) => {
        res.json(users)
    });
};

// Get the dataPurchaseHistories for a given user
exports.findUserById = (req, res) => {
    return User.findByPk(req.params.id, { include: ["purchaseHistories"] })
        .then((user) => {
            // res.json(user)
            res.status(200).send(user);
        });
};

// Get the PurchaseHistories for a given purchaseHistory id
exports.findPurchaseHistoyById = (req, res) => {
    if (req.body.type) {
        PurchaseHistory.findAll({
            where: { userId: req.params.id, type: req.body.type}
        }).then((histories) => {
            res.status(200).send(histories);
        });
    } else {
        PurchaseHistory.findAll({
            where: { userId: req.params.id}
        }).then((histories) => {
            res.status(200).send(histories);
        });
    }
};


//Get All PurchaseHistories
exports.getAllPurchaseHistoriesByUserId = (req, res) => {
    PurchaseHistory.findAll({
        where: {
            userId: req.params.id
        }
    }).then(result => {
        res.status(200).send(result);
    });
};

//Get One PurchaseHistory
exports.getOnePurchaseHistory = (req, res) => {
    PurchaseHistory.findOne({
        where: {
            id: req.params.id
        }
    })
        .then(result => {
            res.status(200).send(result)
        })
}

//Create New PurchaseHistory
exports.createPurchaseHistory = async (req, res) => {
    //save new PurchaseHistory to database
    PurchaseHistory.create({
        userId: req.body.userId,
        type: req.body.type,
        price: req.body.price,
        text: req.body.text,
    })
    .then(result => {
        res.status(200).send(result);
    })
    .catch(err => {
        res.status(500).send({ message: err.message });
    });
};

// Delete PurchaseHistory
exports.deletePurchaseHistory = async (req, res) => {
    try {
        const postDelete = await PurchaseHistory.destroy({ where: { id: req.params.id } });
        res.json(postDelete)
    } catch (error) {
        console.log(error)
    }
};
