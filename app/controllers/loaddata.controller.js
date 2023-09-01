const db = require("../models");
LoadData = db.loaddata
DataCategory = db.dataCategory
  
// Get all Categories include datas
exports.findAll = (req, res) => {
  return LoadData.findAll({
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
  return LoadData.findByPk(req.params.id, { include: ["dataCategory"] })
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

exports.downloadLoadImageById = (req, res) => {
  const directoryPath = __basedir + "/resources/static/assets/uploads/data/loaddata/";

  LoadData.findOne({
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




// Get All Datas
exports.allData = (req, res) => {
    LoadData.findAll({
    }).then(result => {
        res.status(200).send(result);
    });
};

//Get Program Onebyone
exports.oneData = (req, res) => {
    LoadData.findOne({
      where: {
        id: req.params.id
      }
    })
    .then(result => {
      res.status(200).send(result)
    })
  }

// Create New LoadData
exports.createData = async (req, res) => {
  // Save LoadData to Database
  req.tailPath = "data/loaddata";
  req.dateNow = Date.now();
  try {
    await uploadFile(req, res);
    LoadData.create({
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
      // message: `Could not upload the file: ${req.file.originalname}. ${err}`,
    });
  }
};

// Update LoadData
exports.updateData = (req, res) => {
    LoadData.update(
        {
          name: req.body.name,
          file_url: req.body.file_url,
          data_type: req.body.data_type,
          amount: req.body.amount,
          unit: req.body.unit,
          type: req.body.type,
          port: req.body.port,
          date: req.body.date,
          price: req.body.price,
          from: req.body.from,
          to: req.body.to,
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
          created: req.body.created,
          factory: req.body.factory,
          location: req.body.location,
          status: req.body.status

            // name: req.body.name,
            // file_url: req.body.file_url,
            // data_type: req.body.data_type,
            // amount: req.body.amount,
            // unit: req.body.unit,
            // specification: req.body.specification,
            // purpose: req.body.purpose,
            // prediction_date: req.body.prediction_date,
            // datacol: req.body.datacol,
            // from: req.body.from,
            // to: req.body.to,
            // browses: req.body.browses
        }, {
        where: {
            id: req.params.id
        },
    }).then(result => {
        res.status(200).send(result);
    });
};

// Delete LoadData
exports.deleteData = async (req, res) => {
    try {
      const postDelete = await LoadData.destroy({ where: { id: req.params.id } });
      res.json(postDelete)
    } catch (error) {
      console.log(error)
    }
  };
