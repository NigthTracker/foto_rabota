template = require('./headerViewTemplate.html')
class HeaderView extends Marionette.ItemView
    template: _.template(template)
    className: 'header-main'
    tagName : 'div'
    
    initialize: ()->
        
    onRender:()->
        

        
module.exports = HeaderView