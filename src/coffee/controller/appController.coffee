HeaderView = require('../layout/header/headerView')
MainView = require('../view/main/main')
class AppController extends Marionette.Controller
    initialize: (options) ->
        @mainRegion = options.mainRegion
        @mainHeader = options.headerRegion
    main: ->
        HeaderView = new HeaderView()
        MainView = new MainView()
        @mainHeader.show HeaderView
        @mainRegion.show MainView
        
        
module.exports = AppController