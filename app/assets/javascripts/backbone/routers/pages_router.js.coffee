class Mydocs.Routers.PagesRouter extends Backbone.Router
  initialize: (options) ->
    @pages = new Mydocs.Collections.PagesCollection()
    @pages.reset options.pages

  routes:
    "new"      : "newPage"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPage: ->
    @view = new Mydocs.Views.Pages.NewView(collection: @pages)
    $("#pages").html(@view.render().el)

  index: ->
    @view = new Mydocs.Views.Pages.IndexView(pages: @pages)
    $("#pages").html(@view.render().el)

  show: (id) ->
    page = @pages.get(id)

    @view = new Mydocs.Views.Pages.ShowView(model: page)
    $("#pages").html(@view.render().el)

  edit: (id) ->
    page = @pages.get(id)

    @view = new Mydocs.Views.Pages.EditView(model: page)
    $("#pages").html(@view.render().el)
