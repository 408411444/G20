const db = require('../utils/database');
const musicchart = class musicchart {
    constructor(c_m_id,c_m_name,c_singer_id,c_url) {
      this.c_m_id = c_m_id;
      this.c_m_name = c_m_name;
      this.c_singer_id = c_singer_id;
      this.c_url = c_url;
    }
    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM c_music;');
    }

  }
const test2 = async (req, res) => {

  try {
      const [rows] = await Product_xx.fetchAll();
      console.log('fetchAll', JSON.stringify(rows));
  } catch (err) {
    console.log(err);
  }
}

test2();

module.exports = musicchart;