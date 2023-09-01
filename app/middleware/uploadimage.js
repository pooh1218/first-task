const util = require("util");
const multer = require("multer");
const maxSize = 2 * 1024 * 1024;

let storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, __basedir + "/resources/static/assets/uploads/" + req.tailPath);
  },
  filename: (req, file, cb) => {
    console.log(file.originalname);
    cb(null, req.dateNow + file.originalname);
  },
});

let uploadImage = multer({
  storage: storage,
  limits: { fileSize: maxSize },
}).single("image");

let uploadImageMiddleware = util.promisify(uploadImage);
module.exports = uploadImageMiddleware;
