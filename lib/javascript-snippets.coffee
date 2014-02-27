JavascriptSnippetsView = require './javascript-snippets-view'

module.exports =
  javascriptSnippetsView: null

  activate: (state) ->
    @javascriptSnippetsView = new JavascriptSnippetsView(state.javascriptSnippetsViewState)

  deactivate: ->
    @javascriptSnippetsView.destroy()

  serialize: ->
    javascriptSnippetsViewState: @javascriptSnippetsView.serialize()
