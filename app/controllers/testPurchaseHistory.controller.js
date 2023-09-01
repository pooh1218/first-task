const db = require("../models");
TestPurchaseHistory = db.testPurchaseHistory
BrowseHistory = db.browseHistory
User = db.user


// Get the browseHistories for a given user
exports.findTestPurchaseHistoryById = (req, res) => {
    TestPurchaseHistory.findAll({
        where: { userId: req.params.id }
    }
    )
        .then((user) => {
            res.status(200).send(user);
        });
};


//Create New passed history
exports.createTestPurchaseHistory = (req, res) => {
    //save new passed history to database
    TestPurchaseHistory.create({
        userId: req.body.userId,
        date: req.body.date,
        level: req.body.level,
        price: req.body.price,
    })
        .then(result => {
            res.status(200).send(result);
        })
        .catch(err => {
            res.status(500).send({ message: err.message });
        });
};

// Update TestPurchaseHistory
exports.updateTestPurchaseHistory = (req, res) => {
    TestPurchaseHistory.update({
        userId: req.body.userId,
        date: req.body.date,
        level: req.body.level,
        price: req.body.price,
    },
      {
        where: {
          id: req.params.id
        },
      }).then(result => {
        res.status(200).send(result);
      });
  };

