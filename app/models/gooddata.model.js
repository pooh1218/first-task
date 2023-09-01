module.exports = (sequelize, Sequelize) => {
    const GoodData = sequelize.define("gooddatas", {
        name: {
            type: Sequelize.STRING
        },
        image_url: {
            type: Sequelize.STRING
        },
        amount: {
            type: Sequelize.STRING
        },
        tech_prop: {
            type: Sequelize.INTEGER
        },
        usage: {
            type: Sequelize.STRING
        },
    });

    return GoodData;
};