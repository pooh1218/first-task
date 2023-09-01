const controller = require("../controllers/purchaseHistory.controller")

module.exports = function (app) {
    app.use(function (req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });

    // frontend routes
    app.get(
        "/api/purchaseHistory/findAll",
        controller.findAll
    );

    app.post(
        "/api/purchaseHistory/findPurchaseHistoyById/:id",
        controller.findPurchaseHistoyById
    );

    app.get(
        "/api/purchaseHistory/findUserById/:id",
        controller.findUserById
    );

    // backend routes
    app.get(
        "/api/purchaseHistory/get_AllByUserId/:id",
        controller.getAllPurchaseHistoriesByUserId
    );

    app.get(
        "/api/purchaseHistory/get_one/:id",
        controller.getOnePurchaseHistory
    );

    app.post(
        "/api/purchaseHistory/create",
        controller.createPurchaseHistory
    );

    app.delete(
        "/api/purchaseHistory/delete/:id",
        controller.deletePurchaseHistory
    );
}