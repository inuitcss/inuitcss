'use strict';

var sassTrue = require('sass-true');
var glob = require('glob');

// Run tests
glob.sync('test/_*.scss').forEach(function (file) {
  sassTrue.runSass({ file: file }, describe, it);
});
