const controller = require("../controllers/testPurchaseHistory.controller")

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
        "/api/findTestPurchaseHistoryById/:id",
        controller.findTestPurchaseHistoryById
    );
    
    app.post(
        "/api/testPurchaseHistory/create",
        controller.createTestPurchaseHistory
    );
    app.put(
      "/api/testPurchaseHistory/update/:id",
      controller.updateTestPurchaseHistory
    );
}