class Mydocs.Models.Page extends Backbone.Model
  paramRoot: 'page'

  defaults:
    name: null
    title: null
    background_color: null
    padding: null
    margin: null
    font: null

class Mydocs.Collections.PagesCollection extends Backbone.Collection
  model: Mydocs.Models.Page
  url: '/pages'


