class MainRouter extends Marionette.AppRouter
  initialize: (option) ->
    @controller = option.controller

  appRoutes: {
    "": "main"
  }
  execute: (callback,args) ->
    @controller.spinnerShow()
    super(callback, args)

module.exports=MainRouter