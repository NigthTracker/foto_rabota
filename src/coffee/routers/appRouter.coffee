class MainRouter extends Marionette.AppRouter
    initialize: (option) ->
        @controller = option.controller

    appRoutes: {
        "": "main"
    }
    execute: (callback, args) ->
        super(callback, args)

module.exports = MainRouter