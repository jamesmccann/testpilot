Testpilot.Views.Apps ||= {}

class Testpilot.Views.Apps.ListView extends Backbone.Marionette.CompositeView
  template: 'apps/list'
  getItemView: -> Testpilot.Views.Apps.ListItem

  appendHtml: (collectionView, itemView, index) ->
    console.log "here"
    collectionView.$("tbody").append(itemView.el)
