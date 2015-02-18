require 'thor'

module Shipmonk
  class CLI < Thor
    desc 'new <name>', 'Create a new Shipmonk site'
    def new
      puts 'creating a new site'
    end

    desc 'server', 'Start up a local server that hosts your site.'

    def server
      puts 'OMG SERVER TIMEZ!'
    end
  end
end
