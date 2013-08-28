# Place any third party dependencies in www/js/lib or coffee/lib

# Configure loading modules from the lib directory except 'app' ones, which are
# a sibling directory.
requirejs.config
  baseUrl: 'js/lib'
  paths:
    app: '../app'
    tpl: '../tpl'

# Start loading the main app file. Put all your applicaton logic in there.
requirejs ['app/main']
