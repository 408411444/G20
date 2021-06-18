const db = require('../utils/database');
const musicchart = class musicchart {
    constructor(c_id,c_m_name,c_s_name) {
      this.c_id = c_id;
      this.c_m_name = c_m_name;
      this.c_s_name = c_s_name;
    }
    //READ
    static fetchAll() {
        return db.execute('SELECT  ch.c_id ,c_m.c_m_name ,c_s.c_s_name FROM musicchart.chart AS ch , c_music AS c_m , c_singer AS c_s WHERE c_m.c_singer_id = c_s.c_s_id and c_m.c_m_id = ch.c_musicid order by ch.c_id asc;');
    }
  //   static fetchAll() {
  //     return db.execute('SELECT  ch.c_id , e_m.eng_m_name , e_s.eng_s_name FROM musicchart.chart AS ch , eng_music AS e_m , eng_singer AS e_s WHERE ch.eng_musicid = e_m.eng_m_id and e_m.eng_singer_id = e_s.eng_s_id order by ch.c_id asc;');
  // }

  }
const test2 = async (req, res) => {

  try {
      const [rows] = await musicchart.fetchAll();
      console.log('fetchAll', JSON.stringify(rows));
  } catch (err) {
    console.log(err);
  }
}

//test2();

module.exports = musicchart;