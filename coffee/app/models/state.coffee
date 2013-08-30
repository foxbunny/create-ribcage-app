# # Application state
#
# This module keeps track of application state in localStorage.
#
# Because we only need one application state per application, we will make this
# model a singleton.

define (require) ->
  ribcage = require 'ribcage'
  conf = require 'app/conf'

  State = ribcage.models.LocalStorageModel.extend
    storageKey: 'state'
    default:
      started: false

  state = new State id: conf.name
  state.save null, forceCreate: true
  state.on 'change', () -> state.save()

  state
