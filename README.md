docker-ruby-web
===============

A base image for Ruby web apps that is web server-agnostic.

Usage
-----

Get the image:

    docker pull cxops/ruby-web-custom

Unlike [docker-ruby-web](https://github.com:CXInc/docker-ruby-web) which requires adhering to the conventions of nginx+unicorn for the web server and sidekiq for the background, this image provides for setups that need to deviate from that. It requires:

  - A web startup script at /app/bin/web
  - A background job startup script at /app/bin/background, if using background jobs
  - That the web startup script will expose a web server on the unix socket unix:/app/tmp/sockets/web.sock

The downside is that you have to build knowledge of how your app needs to be run using Docker into the app.

Building
--------

    git clone git@github.com:CXInc/docker-ruby-web-custom.git
    cd docker-ruby-web-custom
    
    # Bump this incremental ID for each change in the image
    docker build -t cxops/ruby-web-custom:1 .
