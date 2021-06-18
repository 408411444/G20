var express = require('express');
var router = express.Router();
const finalController = require('../controllers/finalController');
/* GET home page. */

router.get('/final', function(req, res, next) {
  res.render('final', { title: 'Express' });
});
router.get('/f2', finalController.getmusicchart);

module.exports = router;
