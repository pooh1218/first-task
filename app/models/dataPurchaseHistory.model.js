module.exports = (sequelize, Sequelize) => {
  const DataPurchaseHistory = sequelize.define("dataPurchaseHistories", {
    categoryId: {
      type: Sequelize.INTEGER
    },
    userId: {
      type: Sequelize.INTEGER
    },
    username: {
      type: Sequelize.STRING
    },
    dataId: {
      type: Sequelize.INTEGER
    },
    dataname: {
      type: Sequelize.STRING
    },
    voterId: {
      type: Sequelize.INTEGER
    },
    votedate: {
      type: Sequelize.DATEONLY
    },
  });

  return DataPurchaseHistory;
};
  