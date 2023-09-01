const controller = require("../controllers/shipdata.controller");

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
        "/api/shipdata/findAll",
        controller.findAll
    );

    app.get(
        "/api/shipdata/findDataCategoryById/:id",
        controller.findDataCategoryById
    );

    app.get(
        "/api/shipdata/findDataById/:id",
        controller.findDataById
    );

    // backend routes
    app.get(
        "/api/shipdata/category/get_All",
        controller.getAllCategories
    );

    app.get(
        "/api/shipdata/category/get_one/:id",
        controller.getOneCategory
    )

    app.post(
        "/api/shipdata/category/create",
        controller.createCategory
    );


    app.put(
        "/api/shipdata/category/update/:id",
        controller.updateCategory
    );

    app.delete(
        "/api/shipdata/category/delete/:id",
        controller.deleteCategory
    );

    //////////
    app.get(
        "/api/shipdata/get_All",
        controller.allData
    )

    app.get(
        "/api/shipdata/get_one/:id",
        controller.oneData
    )

    app.post(
        "/api/shipdata/create",
        controller.createData
    );

    app.put(
        "/api/shipdata/update/:id",
        controller.updateData
    );

    app.delete(
        "/api/shipdata/delete/:id",
        controller.deleteData
    );

    app.get(
        "/api/shipdata/fileById/:id",
        controller.downloadShipImageById
    );
};