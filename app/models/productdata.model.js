module.exports = (sequelize, Sequelize) => {
    const ProductData = sequelize.define("productdatas", {
        name: {
            type: Sequelize.STRING
        },
        image_url: {
            type: Sequelize.STRING
        },
        amount: {
            type: Sequelize.STRING
        },
        price: {
            type: Sequelize.INTEGER
        },
        number: {
            type: Sequelize.STRING
        },
    });

    return ProductData;
};