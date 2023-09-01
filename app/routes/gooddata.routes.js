const controller = require("../controllers/gooddata.controller");

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
        "/api/gooddata/findAll",
        controller.findAll
    );

    app.get(
        "/api/gooddata/findDataCategoryById/:id",
        controller.findDataCategoryById
    );

    app.get(
        "/api/gooddata/findDataById/:id",
        controller.findDataById
    );

    // backend routes
    app.get(
        "/api/gooddata/category/get_All",
        controller.getAllCategories
    );

    app.get(
        "/api/gooddata/category/get_one/:id",
        controller.getOneCategory
    )

    app.post(
        "/api/gooddata/category/create",
        controller.createCategory
    );


    app.put(
        "/api/gooddata/category/update/:id",
        controller.updateCategory
    );

    app.delete(
        "/api/gooddata/category/delete/:id",
        controller.deleteCategory
    );

    //////////
    app.get(
        "/api/gooddata/get_All",
        controller.allData
    )

    app.get(
        "/api/gooddata/get_one/:id",
        controller.oneData
    )

    app.post(
        "/api/gooddata/create",
        controller.createData
    );

    app.put(
        "/api/gooddata/update/:id",
        controller.updateData
    );

    app.delete(
        "/api/gooddata/delete/:id",
        controller.deleteData
    );
    
    app.get(
        "/api/gooddata/fileById/:id",
        controller.downloadGoodImageById
    );
};