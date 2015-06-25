package com.phonegap.plugins;

import org.json.JSONArray;
import org.json.JSONException;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;

public class NativeStorage extends CordovaPlugin {

    public final String ACTION_GET_VALUE = "getValue";

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        boolean result = false;

        System.out.println("IN NATIVE IMPLEMENTATION!!!!!!!!!!!!!!!!!!!!!!!");
 
        if(action.equals(ACTION_GET_VALUE)) {
        	String value = "";
        	if( args.getString(0).equalsIgnoreCase("basic_auth_password") ) {
        		value = "G6KMnKyG/Ar+bwuUZhO0O98PyWp7prbfB37I7KUIbdI=";
        	} else if( args.getString(0).equalsIgnoreCase("demo_credentials") ) {
        		value = "{\"username\":\"demo@coyote.com\",\"password\":\"coyote\"}";
        	} else if( args.getString(0).equalsIgnoreCase("android_sender_id") ) {
                value = "829760104716";
            }
    		result = true;
    		callbackContext.success( value );
        }
        
        return result;
    }
}
