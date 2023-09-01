const db = require("../models");
PassedTest = db.passedTest
BrowseHistory = db.browseHistory
User = db.user


// Get the browseHistories for a given user
exports.findPassedTestById = (req, res) => {
    PassedTest.findAll({
        where: { userId: req.params.id }
    }
    )
        .then((user) => {
            res.status(200).send(user);
        });
};


//Create New passed history
exports.createPassedTest = (req, res) => {
    //save new passed history to database
    PassedTest.create({
        date: req.body.date,
        total: req.body.total,
        status: req.body.status,
        matched: req.body.matched,
        userId: req.body.userId,
        level: req.body.level
    })
        .then(result => {
            res.status(200).send(result);
        })
        .catch(err => {
            res.status(500).send({ message: err.message });
        });
};

// Update PassedTest
exports.updatePassedTest = (req, res) => {
    PassedTest.update({
        date: req.body.date,
        total: req.body.total,
        status: req.body.status,
        matched: req.body.matched,
        userId: req.body.userId,
        level: req.body.level
    },
      {
        where: {
          id: req.params.id
        },
      }).then(result => {
        res.status(200).send(result);
      });
  };
