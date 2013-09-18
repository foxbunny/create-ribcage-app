# # Main application module
#
# This module configures the router and starts the application.

define (require) ->
  # Stateful router
  {Router: StatefulRouter} = require 'ribcage/routers/stateful'

  # Application configuration
  conf = require 'app/conf'

  # Route handlers
  hello = require 'app/routes/hello'

  # ## `App`
  #
  # This is the router. It is the main hub of your application. It introduces
  # views to each other, picks a router that will handle changes in the URL or
  # fragment identifier (hash).
  App = StatefulRouter.extend

    init: () ->
      @conf = conf
      @content = '#content'

    routes:
      '': hello.world

  app = new App()
  app.start()

