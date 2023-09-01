module.exports = (sequelize, Sequelize) => {
  const TestPurchaseHistory = sequelize.define("testPurchaseHistories", {
    userId: {
      type: Sequelize.INTEGER
    },
    level: {
      type: Sequelize.STRING
    },
    price: {
      type: Sequelize.INTEGER
    },
  });

  return TestPurchaseHistory;
};