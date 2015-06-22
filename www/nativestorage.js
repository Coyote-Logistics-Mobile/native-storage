/*global cordova */

cordova.define("cordova/plugin/nativestorage", function(require, exports, module) {
    var exec = require('cordova/exec');

    var NativeStorage = function() {};

    NativeStorage.prototype.getValue = function(key, successCallback, failureCallback) {
        exec( successCallback, failureCallback, 'NativeStorage', 'GetValue', [key]);
    };

    var nativeStorage = new NativeStorage();
    module.exports = nativeStorage;

});