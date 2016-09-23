window.$ = window.jQuery = require('jquery')
$ () ->
    window._ = require('underscore')
    window.Backbone = require('backbone')
    window.Backbone.Radio = require('backbone.radio')
    window.Marionette = require('backbone.marionette')
    bootstrap = require('bootstrap')
    Application = require('./coffee/aplication')
    
    new Application()


