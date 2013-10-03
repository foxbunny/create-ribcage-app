# Ribcage application template (CoffeeScript edition)

This is a [volo](http://volojs.org/)-compatible
[Ribcage](https://github.com/foxbunny/ribcage) web application template.

This template is based on the basic
[create-template](https://github.com/volojs/create-template).

## JavaScript edition

This is a template for CoffeeScript development. There is
[another template](https://github.com/foxbunny/create-ribcage-app-js) for
people who do not want to use CoffeeScript.

## Directory layout

* coffee/ - CoffeeScript sources
    * app/ - application modules
        * routes/ - the directory to hold route handlers
            * hello.coffee - example route handler
        * views/ - the directory to hold views
            * hello.coffee - example view
        * conf.coffee - application configuration
        * main.coffee - application router and basic setup
    * app.coffee - Basic setup module that configures RequireJS
* www/ - the web assets for the project
    * index.html - the entry point into the app.
    * js/
        * app/ - the directory to hold compiled sources
        * lib/ - the directory to hold third party scripts.
        * tpl/ - the directory to hold templates
* tools/ - the build tools to optimize the project and HTTP server.

## Creating a project using volo

To create a project using volo, run:

    volo create my_project_name foxbunny/create-ribcage-app

Volo will take care of installing all dependencies, so you can skip that part
in the next section.

When asked about `jquery.soap` and `jquery.xml2json` dependencies and exports,
simply accept the defaults. You can also remove them later if you wish but you
will need to adjust some of the default code for the app to start.

## Preparing the project

To keep the template small, dependencies are not included. Install them using
the following command:

    volo add

You will get a few warnings about different packages trying to install a
different version of jQuery, but that is expected, and you should ignore them.

You may also want to install a few Node dependencies (and, indeed, NodeJS
itself) before proceeding. Installing NodeJS is outside the scope of this
document. To install the development dependencies, simply run:

    npm install

Note that this template is aimed towards people who write CoffeeScript, so
CoffeeScript is installed as part of development dependencies. You can edit the
`package.json` file to remove this dependency.

Although installing some of the dependencies may show some warnings on Windows,
it should all just work in the end.

## Compiling CoffeeScript

As noted in the previous section, this template is geared towards CoffeeScript
developers. The volofile provided with the project includes two
CoffeeScript-specific targets. Those are:

    volo compile

and
    
    volo watch

They do what you would expect. They compile, and watch-compile the CoffeeScript
source respectively. 

## Building

To optimize, run:

    volo build

This will run the "build" command in the volofile that is in this directory.

That build command creates an optimized version of the project in a
**www-built** directory. The js/app.js file will be optimized to include
all of its dependencies.

For more information on the optimizer:
http://requirejs.org/docs/optimization.html

For more information on using requirejs:
http://requirejs.org/docs/api.html

## Development server

The project uses [DaProxy](https://bitbucket.org/cloudhorizon/devproxy) to
serve the unbuilt files. To start it, run:

    volo serve

The server will be accessible at [localhost:8080](http://localhost:8080/). 

The server is a simple HTTP server with reverse proxy capability. The
file is called `proxy.json` and is located in the `tools` directory. The layout
of the file should be self-explanatory.

## Known issues

Compiling or watch-compiling CoffeeScript will create a directory `-p` in the
source tree (confirmed on Windows). I still haven't figured out why this
happens. The directory empty and it is in .gitignore file, so it won't do any
harm. I understand if you find it annoying, though.
