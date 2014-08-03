FocusView = require './focus-view'

module.exports =
  focusView: null

  activate: (state) ->
    @focusView = new FocusView(state.focusViewState)
    @focusView.focus()

  deactivate: ->
    @focusView.destroy()

  serialize: ->
    focusViewState: @focusView.serialize()
