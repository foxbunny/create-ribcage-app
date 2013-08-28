// Generated by CoffeeScript 1.6.3
define(function(require) {
  var State, ribcage, state;
  ribcage = require('ribcage');
  State = ribcage.models.LocalStorageModel.extend({
    "default": {
      started: false
    }
  });
  state = new State();
  state.on('change', function() {
    return state.save();
  });
  return state;
});