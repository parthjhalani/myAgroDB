const cds = require('@sap/cds')
require = cds.lazified(module)
module.exports = (srv)=>{
    const cors = module.require('cors');
    cds.app.use(cors());
    srv.after('READ',function(data,req){
        for(var i=0;i<data.length;i++){
            data[i].indexid = i + 1;
            
        }
    })
}