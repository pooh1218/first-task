module.exports = (sequelize, Sequelize) => {
    const LoadData = sequelize.define("loaddatas", {
        name: {
            type: Sequelize.STRING
        },
        amount: {
            type: Sequelize.INTEGER
        },
        from: {
            type: Sequelize.STRING
        },
        to: {
            type: Sequelize.STRING
        },
        plan_date: {
            type: Sequelize.DATEONLY
        },
        status: {
            type: Sequelize.STRING
        },
    });

    return LoadData;
};