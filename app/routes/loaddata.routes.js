const controller = require("../controllers/loaddata.controller");

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
        "/api/loaddata/findAll",
        controller.findAll
    );

    app.get(
        "/api/loaddata/findDataCategoryById/:id",
        controller.findDataCategoryById
    );

    app.get(
        "/api/loaddata/findDataById/:id",
        controller.findDataById
    );

    // backend routes
    app.get(
        "/api/loaddata/category/get_All",
        controller.getAllCategories
    );

    app.get(
        "/api/loaddata/category/get_one/:id",
        controller.getOneCategory
    )

    app.post(
        "/api/loaddata/category/create",
        controller.createCategory
    );


    app.put(
        "/api/loaddata/category/update/:id",
        controller.updateCategory
    );

    app.delete(
        "/api/loaddata/category/delete/:id",
        controller.deleteCategory
    );

    //////////
    app.get(
        "/api/loaddata/get_All",
        controller.allData
    )

    app.get(
        "/api/loaddata/get_one/:id",
        controller.oneData
    )

    app.post(
        "/api/loaddata/create",
        controller.createData
    );

    app.put(
        "/api/loaddata/update/:id",
        controller.updateData
    );

    app.delete(
        "/api/loaddata/delete/:id",
        controller.deleteData
    );
    
    app.get(
        "/api/loaddata/fileById/:id",
        controller.downloadLoadImageById
    );
};