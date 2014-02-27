{View} = require 'atom'

module.exports =
class JavascriptSnippetsView extends View
  @content: ->
    @div class: 'javascript-snippets overlay from-top', =>
      @div "The JavascriptSnippets package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "javascript-snippets:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "JavascriptSnippetsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
