template = require('./mainLayout.html')
class AppLayoutView extends Marionette.LayoutView
    el: "body"
    template:template
    regions:
        header: "#header"
        content: "#main"

module.exports = AppLayoutView