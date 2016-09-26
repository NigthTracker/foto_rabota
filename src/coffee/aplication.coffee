AppRouter = require('./routers/appRouter')
AppController = require('./controller/appController')
MainLayout = require('./layout/main/main')

class Application extends Marionette.Application
    initialize: (options)->
        @on 'before:start', @startHistory
        @layout = new MainLayout()
        @layout.render()
        @appController = new AppController mainRegion: @layout.content, headerRegion: @layout.header
        @router = new AppRouter controller: @appController
        @start()

    startHistory: ()->
        Backbone.history.start()

module.exports = Application