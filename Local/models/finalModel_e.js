const db = require('../utils/database');
const echart = class echart {
    constructor(c_id,eng_m_name,eng_s_name) {
      this.c_id = c_id;
      this.eng_m_name = eng_m_name;
      this.eng_s_name = eng_s_name;
    }
    // READ
    static fetchAll2() {
        return db.execute('SELECT  ch.c_id , e_m.eng_m_name , e_s.eng_s_name FROM musicchart.chart AS ch , eng_music AS e_m , eng_singer AS e_s WHERE ch.eng_musicid = e_m.eng_m_id and e_m.eng_singer_id = e_s.eng_s_id order by ch.c_id asc;');
    }
}
const test2 = async (req, res) => {

  try {
      const [rows] = await echart.fetchAll2();
      console.log('fetchAll2', JSON.stringify(rows));
  } catch (err) {
    console.log(err);
  }
}

//test2();

module.exports = echart;