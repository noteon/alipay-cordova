
var exec = require('cordova/exec');

var Alipay = function(){};

Alipay.prototype.checkAccount = function(cb){
	exec(cb,null,'Alipay','checkAccount');
}

module.exports = new Alipay();
