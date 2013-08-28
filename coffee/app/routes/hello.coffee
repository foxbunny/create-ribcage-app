# # Example route handler

define (require) ->
  HelloView = require 'app/views/hello'

  # ## `world()`
  #
  # This is a route handler. It is bound to the App router, so you can
  # reference the router by using `this` (or `@` in CoffeeScript).
  world: () ->
    # Perform cleanup: unregister any previously active views
    @cleanup()

    # Register a view and render it
    @register(new HelloView()).render().$el.appendTo @content
