const db = require("../models");
Article = db.article;
ArticleCategory = db.articleCategory;
const Sequelize = require("sequelize");

// Add Recommend
exports.addRecommend = (req, res) => {
  Article.findOne({
    where: {
      id: req.params.id,
    },
  }).then((selectedArticle) => {
    Article.update(
      {
        recommends: selectedArticle.recommends + 1,
      },
      {
        where: {
          id: req.params.id,
        },
      }
    ).then((result) => {
      res.status(200).send(result);
    });
  });
};

// Add Opposition
exports.addOpposition = (req, res) => {
  Article.findOne({
    where: {
      id: req.params.id,
    },
  }).then((selectedArticle) => {
    Article.update(
      {
        oppositions: selectedArticle.oppositions + 1,
      },
      {
        where: {
          id: req.params.id,
        },
      }
    ).then((result) => {
      res.status(200).send(result);
    });
  });
};

// Add browingCount
exports.addBrowingCount = (req, res) => {
  Article.findOne({
    where: {
      id: req.params.id,
    },
  }).then((selectedArticle) => {
    Article.update(
      {
        browingcount: selectedArticle.browingcount + 1,
      },
      {
        where: {
          id: req.params.id,
        },
      }
    ).then((result) => {
      res.status(200).send(result);
    });
  });
};

// Find best adding user
exports.findTopUser = (req, res) => {
  //   return ArticleCategory.findAll({
  //     include: ["articles"],
  //   }).then((result) => {
  //     // console.log("------------------------>",result)
  //     res.json(result)
  //   });
  Article.sequelize.query(
      `SELECT id, username, currentAvatarId, (SELECT SUM(recommends) FROM articles WHERE articles.userId=users.id) AS total_recommends FROM users ORDER BY total_recommends DESC LIMIT 4                       `
    )
    .then((result) => {
      res.json(result[0]);
    });
};

// Get top programs
// exports.findTopUser = (req, res) => {
//   return Article.findAll({
//     group: ['userId'],
//     attributes: [
//       'userId',
//       [Sequelize.fn('sum', Sequelize.col('recommends')), 'total_amount'],
//     ],
//   }).then((article) => {
//     res.json(article)

//     // return Program.findAll({
//     //   limit: 3,
//     //   order: [['recommends', 'DESC']]
//     //   // include: ["programCategory"],
//     // }).then((program) => {
//     //   res.json(program)
//     // });
//   });
// };

// Get all Categories include article
exports.findAll = (req, res) => {
  return ArticleCategory.findAll({
    include: ["articles"],
  }).then((articleCategories) => {
    res.json(articleCategories);
  });
};

// Get the articles for a given category
exports.findArticleCategoryById = (req, res) => {
  Article.sequelize
  .query(
    `SELECT id, name, DESCRIPTION,recommends,oppositions,(SELECT title FROM articlecategories WHERE articlecategories.id=articles.articleCategoryId) AS categoryTitle,
(SELECT username FROM users WHERE users.id=articles.userId) AS username,(SELECT currentAvatarId FROM users WHERE users.id=articles.userId) AS currentAvatarId, 
createdAt FROM articles WHERE articleCategoryId=` + req.params.id
  )
  .then((result) => {
    console.log("query_category_id", result);
    res.json(result[0]);
  });
};

// Get the article for a given article id
exports.findArticleById = (req, res) => {
  Article.sequelize
  .query(
    `SELECT id, name, DESCRIPTION,recommends,oppositions,(SELECT title FROM articlecategories WHERE articlecategories.id=articles.articleCategoryId) AS categoryTitle,
(SELECT username FROM users WHERE users.id=articles.userId) AS username,(SELECT currentAvatarId FROM users WHERE users.id=articles.userId) AS currentAvatarId, 
createdAt FROM articles WHERE userId=` + req.params.id
  )
  .then((result) => {
    console.log("query_userId", result);
    res.json(result[0]);
  });
};

//Get All Categories
exports.getAllCategories = (req, res) => {
  ArticleCategory.findAll({}).then((result) => {
    res.status(200).send(result);
  });
};

//Get Category Onebyone
exports.getOneCategory = (req, res) => {
  ArticleCategory.findOne({
    where: {
      id: req.params.id,
    },
  }).then((result) => {
    res.status(200).send(result);
  });
};

//Create New Category
exports.createCategory = (req, res) => {
  //save new category to database
  ArticleCategory.create({
    title: req.body.title,
    description: req.body.description,
  })
    .then((result) => {
      res.status(200).send(result);
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

//Update Category
exports.updateCategory = (req, res) => {
  ArticleCategory.update(
    {
      title: req.body.title,
      description: req.body.description,
    },
    {
      where: {
        id: req.params.id,
      },
    }
  ).then((result) => {
    res.status(200).send(result);
  });
};

//Delete Category
exports.deleteCategory = async (req, res) => {
  try {
    const postDelete = await ArticleCategory.destroy({
      where: { id: req.params.id },
    });
    res.json(postDelete);
  } catch (error) {
    console.log(error);
  }
};

//Get All Articles
exports.getAllArticles = (req, res) => {
  Article.findAll({}).then((result) => {
    res.status(200).send(result);
  });
};

exports.getTrendingArticles = (req, res) => {
  Article.sequelize
    .query(
      `SELECT id, name,(SELECT username FROM users WHERE users.id=articles.userId) AS username, 
      (SELECT currentAvatarId FROM users WHERE users.id=articles.userId) AS currentAvatarId, 
      (SELECT title FROM articlecategories WHERE articlecategories.id=articles.articleCategoryId) AS categoryTitle, 
      DESCRIPTION, recommends, oppositions, createdAt, articleCategoryId FROM articles order by recommends limit 10
      `
    )
    .then((result) => {
      res.json(result[0]);
    });
};

// Get All Articles
exports.getRecentArticles = (req, res) => {
  Article.sequelize
    .query(
      `SELECT id, name,(SELECT username FROM users WHERE users.id=articles.userId) AS username, 
      (SELECT currentAvatarId FROM users WHERE users.id=articles.userId) AS currentAvatarId, 
      (SELECT title FROM articlecategories WHERE articlecategories.id=articles.articleCategoryId) AS categoryTitle, 
      DESCRIPTION, recommends, oppositions, createdAt, articleCategoryId FROM articles order by createdAt
      `
    )
    .then((result) => {
      res.json(result[0]);
    });
};

//Get Article Onebyone
exports.oneArticle = (req, res) => {
  Article.sequelize
    .query(
      `SELECT id, name, description, recommends, oppositions, browingcount, 
      (SELECT currentAvatarId FROM users WHERE users.id=articles.userId) AS currentAvatarId FROM articles WHERE id=` + req.params.id
    )
    .then((result) => {
      res.json(result[0][0]);
    });
};

// Verify New Article
exports.verifyArticle = (req, res) => {
  res.json(1);
};

// Create New Article
exports.createArticle = (req, res) => {
  // Save Article to Database
  Article.create({
    name: req.body.name,
    description: req.body.description,
    contact_number: req.body.contact_number,
    articleCategoryId: req.body.articleCategoryId,
    attach_url: req.body.attach_url,
    source: req.body.source,
    recommends: req.body.recommends,
    oppositions: req.body.oppositions,
    browingcount: req.body.browingcount,
    userId: req.body.userId
    // category: req.body.category
  })
    .then((result) => {
      res.status(200).send(result);
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

// Update Article
exports.updateArticle = (req, res) => {
  Article.update(
    {
      name: req.body.name,
      description: req.body.description,
      contact_number: req.body.contact_number,
      attach_url: req.body.attach_url,
      source: req.body.source,
      recommends: req.body.recommends,
      oppositions: req.body.oppositions,
      browingcount: req.body.browingcount,
      // category: req.body.category
    },
    {
      where: {
        id: req.params.id,
      },
    }
  ).then((result) => {
    res.status(200).send(result);
  });
};

// Delete Notification
exports.deleteArticle = async (req, res) => {
  try {
    const postDelete = await Article.destroy({ where: { id: req.params.id } });
    res.json(postDelete);
  } catch (error) {
    console.log(error);
  }
};
