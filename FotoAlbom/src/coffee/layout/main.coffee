template = require('./mainLayout.html')
class AppLayoutView extends Marionette.LayoutView
    el: "body"
    template:template
    regions:
        content: "#main"

module.exports = AppLayoutView