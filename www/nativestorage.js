
var exec = require('cordova/exec');

var NativeStorage = function() {};

NativeStorage.prototype.getValue = function(key, successCallback, failureCallback) {
    exec( successCallback, failureCallback, 'NativeStorage', 'getValue', [key]);
};

var nativeStorage = new NativeStorage();
module.exports = nativeStorage;
window.nativestorage = nativeStorage;
console.log("############### NATIVE STORAGE #################");

