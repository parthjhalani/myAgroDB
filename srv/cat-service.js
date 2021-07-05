const cds = require('@sap/cds')
require = cds.lazified(module)
module.exports = (srv)=>{
    const cors = module.require('cors');
    cds.app.use(cors());

}