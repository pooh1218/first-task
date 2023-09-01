module.exports = (sequelize, Sequelize) => {
  const PurchaseHistory = sequelize.define("purchasehistories", {
    type: {
      type: Sequelize.STRING
    },
    price: {
      type: Sequelize.STRING
    },
    text: {
      type: Sequelize.STRING
    },
  });

  return PurchaseHistory;
};
