const musicchart = require('../models/finalModel_c');
const echart = require('../models/finalModel_e');

exports.getmusicchart = async (req, res) => {
    let data , eng;
    try {
        const [rows] = await musicchart.fetchAll();
        const [erows] = await echart.fetchAll2();
        //console.log('fetchAll', JSON.stringify(rows));
        //console.log('fetchAll', JSON.stringify(erows));
        data = rows;
        eng = erows;
        //res.json(data);
        res.render('final', { 
            title: '',
            eng ,
            data ,
            
        });
    } catch (err) {
        console.log(err);
    }
}
