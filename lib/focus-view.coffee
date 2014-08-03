{View} = require 'atom'

module.exports =
class FocusView extends View
  @content: ->
    @div class: 'focus', =>
      @div "The Focus package is Alive! It's ALIVE!"
      @div outlet: 'focusBeep'

  initialize: (serializeState) ->
    atom.workspaceView.command "focus:toggle", => @toggle()
    atom.workspaceView.command 'focus:beep', => @beep()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "FocusView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.appendToRight(this)

  beep: ->
      @focusBeep.append('<p>Beep!</p>')
