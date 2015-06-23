var exec = require('cordova/exec');

window.nativestorage = {

    getValue: function(key, success, error) {
        exec( success, error, 'NativeStorage', 'getValue', [key] );
    }

};
