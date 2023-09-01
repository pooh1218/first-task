const controller = require("../controllers/productdata.controller");

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
        "/api/productdata/findAll",
        controller.findAll
    );

    app.get(
        "/api/productdata/findDataCategoryById/:id",
        controller.findDataCategoryById
    );

    app.get(
        "/api/productdata/findDataById/:id",
        controller.findDataById
    );

    // backend routes
    app.get(
        "/api/productdata/category/get_All",
        controller.getAllCategories
    );

    app.get(
        "/api/productdata/category/get_one/:id",
        controller.getOneCategory
    )

    app.post(
        "/api/productdata/category/create",
        controller.createCategory
    );


    app.put(
        "/api/productdata/category/update/:id",
        controller.updateCategory
    );

    app.delete(
        "/api/productdata/category/delete/:id",
        controller.deleteCategory
    );

    //////////
    app.get(
        "/api/productdata/get_All",
        controller.allData
    )

    app.get(
        "/api/productdata/get_one/:id",
        controller.oneData
    )

    app.post(
        "/api/productdata/create",
        controller.createData
    );

    app.put(
        "/api/productdata/update/:id",
        controller.updateData
    );

    app.delete(
        "/api/productdata/delete/:id",
        controller.deleteData
    );
    
    app.get(
        "/api/productdata/fileById/:id",
        controller.downloadProductImageById
    );
};