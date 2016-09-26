template = require('./mainTemplate.html')
class MainView extends Marionette.ItemView
    template: _.template(template)
    className: 'main-view'
    tagName : 'div'
    
    initialize: ()->
    
    onRender:()->



module.exports = MainView