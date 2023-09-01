module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define("users", {
    username: {
      type: Sequelize.STRING
    },
    name: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    gender: {
      type: Sequelize.STRING
    },
    birthday: {
      type: Sequelize.DATEONLY
    },
    balance: {
      type: Sequelize.INTEGER
    },
    free_balance: {
      type: Sequelize.INTEGER
    },
    password: {
      type: Sequelize.STRING
    },
    purchasedAvatar: {
      type: Sequelize.TEXT
    },
    currentAvatarId:{
      type: Sequelize.STRING
    },
    votestate: {
      type: Sequelize.TEXT
    },
  });

  return User;
};
