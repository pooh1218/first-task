module.exports = (sequelize, Sequelize) => {
    const PassedTest = sequelize.define("passedTests", {
        level: {
            type: Sequelize.STRING
        },
        total: {
            type: Sequelize.INTEGER
        },
        matched: {
            type: Sequelize.INTEGER
        },
        status: {
            type: Sequelize.STRING
        },
    });

    return PassedTest;
};