var exec = require('cordova/exec');

module.exports = {
    
    getValue: function(key, success, error) {
        exec( success, error, 'NativeStorage', 'getValue', [key]);
    }

};