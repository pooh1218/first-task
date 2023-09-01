module.exports = (sequelize, Sequelize) => {
    const ShipData = sequelize.define("shipdatas", {
        name: {
            type: Sequelize.STRING
        },
        image_url: {
            type: Sequelize.STRING
        },
        plan_date: {
            type: Sequelize.DATEONLY
        },
        port: {
            type: Sequelize.STRING
        },
        type: {
            type: Sequelize.STRING
        },
        price: {
            type: Sequelize.INTEGER
        },
        owner: {
            type: Sequelize.STRING
        },
        runner: {
            type: Sequelize.STRING
        },
        total_weight: {
            type: Sequelize.INTEGER
        },
        load_weight: {
            type: Sequelize.INTEGER
        },
        weight: {
            type: Sequelize.INTEGER
        },
        length: {
            type: Sequelize.INTEGER
        },
        width: {
            type: Sequelize.INTEGER
        },
        current_height: {
            type: Sequelize.INTEGER
        },
        full_load: {
            type: Sequelize.INTEGER
        },
        engine: {
            type: Sequelize.STRING
        },
        built_date: {
            type: Sequelize.DATEONLY
        },
        factory: {
            type: Sequelize.STRING
        },
        location: {
            type: Sequelize.STRING
        },
        status: {
            type: Sequelize.STRING
        },
        voterId: {
            type: Sequelize.INTEGER
        },
    });

    return ShipData;
};