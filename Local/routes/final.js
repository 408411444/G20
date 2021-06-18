var express = require('express');
var router = express.Router();

const finalController = require('../controllers/finalController');
/* GET home page. */
router.get('/f1', finalController.getmusicchart);

module.exports = router;
