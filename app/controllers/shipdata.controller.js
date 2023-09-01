const db = require("../models");
const uploadFile = require("../middleware/upload");

ShipData = db.shipdata
DataCategory = db.dataCategory
  
// Get all Categories include datas
exports.findAll = (req, res) => {
  return ShipData.findAll({
    include: ["dataCategory"],
  }).then((data) => {
    res.json(data)
  });
};

// Get the datas for a given category
exports.findDataCategoryById = (req, res) => {
  return DataCategory.findByPk(req.params.id, { include: ["datas"] })
    .then((category) => {
      // res.json(category)
      res.status(200).send(category);
    });
};

// Get the data for a given data id
exports.findDataById = (req, res) => {
  return ShipData.findByPk(req.params.id, { include: ["dataCategory"] })
    .then((data) => {
      res.json(data)
    })
    .catch((err) => {
      console.log(">> Error while finding data: ", err);
    });
};

//Get All Categories
exports.getAllCategories = (req, res) => {
  DataCategory.findAll({
  }).then(result => {
    res.status(200).send(result);
  });
};

//Get Category Onebyone
exports.getOneCategory = (req, res) => {
  DataCategory.findOne({
    where: {
      id: req.params.id
    }
  })
    .then(result => {
      res.status(200).send(result)
    })
}

//Create New Category
exports.createCategory = (req, res) => {
  //save new category to database
  DataCategory.create({
    title: req.body.title,
    description: req.body.description,
    parentId:req.body.parentId
  })
    .then(result => {
      res.status(200).send(result);
    })
    .catch(err => {
      res.status(500).send({ message: err.message });
    });
};


//Update Category
exports.updateCategory = (req, res) => {
  DataCategory.update(
    {
      title: req.body.title,
      description: req.body.description,
      parentId:req.body.parentId
    }, {
    where: {
      id: req.params.id
    },
  }).then(result => {
    res.status(200).send(result);
  });
};

//Delete Category
exports.deleteCategory = async (req, res) => {
  try {
    const postDelete = await DataCategory.destroy({ where: { id: req.params.id } });
    res.json(postDelete)
  } catch (error) {
    console.log(error)
  }
};




// Get All Datas
exports.allData = (req, res) => {
    ShipData.findAll({
    }).then(result => {
        res.status(200).send(result);
    });
};

//Get Program Onebyone
exports.oneData = (req, res) => {
  ShipData.findOne({
    where: {
      id: req.params.id
    }
  })
  .then(result => {
    res.status(200).send(result)
  })
}

// Create New ShipData
exports.createData = async (req, res) => {
  req.tailPath = "data/shipdata"
  req.dateNow = Date.now()

  try {
    await uploadFile(req, res);
    console.log("req", req);
    // Save Media to Database
    ShipData.create({
      name: req.body.name,
      image_url: req.dateNow + req.file.originalname,
      plan_date: req.body.plan_date,
      type: req.body.type,
      port: req.body.port,
      price: req.body.price,
      owner: req.body.owner,
      runner: req.body.runner,
      total_weight: req.body.total_weight,
      load_weight: req.body.load_weight,
      weight: req.body.weight,
      current_height: req.body.current_height,
      width: req.body.width,
      length: req.body.length,
      full_load: req.body.full_load,
      engine: req.body.engine,
      built_date: req.body.built_date,
      factory: req.body.factory,
      location: req.body.location,
      status: req.body.status,
      voterId: req.body.voterId,
    })
      .then(result => {
        res.status(200).send(result);
      })
      .catch(err => {
        res.status(500).send({ message: err.message });
      });
    } catch (err) {
    console.log(err);

    if (err.code == "LIMIT_FILE_SIZE") {
      return res.status(500).send({
        message: "File size cannot be larger than 2MB!",
      });
    }

    res.status(500).send({
      message: `Could not upload the file: ${req.file.originalname}. ${err}`,
    });
  }
};

// Update ShipData
exports.updateData = (req, res) => {
  ShipData.update(
    {
    name: req.body.name,
    image_url: req.body.image_url,
    plan_date: req.body.plan_date,
    type: req.body.type,
    port: req.body.port,
    price: req.body.price,
    owner: req.body.owner,
    runner: req.body.runner,
    total_weight: req.body.total_weight,
    load_weight: req.body.load_weight,
    weight: req.body.weight,
    current_height: req.body.current_height,
    width: req.body.width,
    length: req.body.length,
    full_load: req.body.full_load,
    engine: req.body.engine,
    built_date: req.body.built_date,
    factory: req.body.factory,
    location: req.body.location,
    status: req.body.status,
    }, {
    where: {
        id: req.params.id
    },
  }).then(result => {
      res.status(200).send(result);
  });
};

exports.downloadShipImageById = (req, res) => {
  const directoryPath = __basedir + "/resources/static/assets/uploads/data/shipdata/";

  ShipData.findOne({
    where: {
      id: req.params.id
    }
  })
    .then(result => {
      var fileName = '';
      if(result.image_url) fileName = result.image_url;
      res.download(directoryPath + fileName, fileName, (err) => {
        if (err) {
          res.status(500).send({
            message: "Could not download the file. " + err,
          });
        }
      });
      // res.status(200).send(result)
    })
};

// Delete ShipData
exports.deleteData = async (req, res) => {
    try {
      const postDelete = await ShipData.destroy({ where: { id: req.params.id } });
      res.json(postDelete)
    } catch (error) {
      console.log(error)
    }
  };
