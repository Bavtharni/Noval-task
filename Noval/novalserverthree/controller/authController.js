const Model = require('../model/auth')


module.exports = {
    search: function (req, res) {
      return new Promise((resolve, reject) => {
            try {
                Model.search(
                    req.con,req.body,
                    function (err, data) {
                   
                      if (err) {
                        resolve([]);
                      } else {
                      
                        if (data.length > 0) {
                          resolve(data);
                          res.status(200).send(data);
                        } else {
                          resolve(0);
                        }
                      }
                    }
                  );
                  
            }
            catch (e) {
console.log(e)
                res.status(200).send(JSON.stringify({
                    e
                }));
            }
          })
        } 
      
    
}