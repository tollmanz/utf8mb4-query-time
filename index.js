'use strict';

var async = require('async');
var _ = require('lodash');

function randomString(len, charSet) {
    var charSet = charSet || 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 -_/\'!@#$%^&()+=';
    var randomString = '';
    for (var i = 0; i < len; i++) {
        var randomPoz = Math.floor(Math.random() * charSet.length);
        randomString += charSet.substring(randomPoz,randomPoz+1);
    }
    return randomString;
}

var vals = _.range(1000000);

async.each(vals, function (num, callback) {
    var meta_id = num;
    var post_id = _.random(1, 500000);
    var key_prefix = (0 === _.random(0,1)) ? '_' : '';
    var meta_key = key_prefix + randomString(_.random(5, 50));
    var meta_value = randomString(_.random(10, 500));

    console.log('INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES ("' + meta_id + '", "' + post_id + '", "' + meta_key + '", "' + meta_value + '");');

    callback();
}, function (err) {
    if (err) {
      console.log('A file failed to process');
    }
});
