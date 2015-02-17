require 'thor'

module Shipmonk
  class CLI < Thor
    desc 'Create a new Shipmonk site.', 'Create a new Shipmonk site.'
    def new
      puts 'creating a new site'
    end

    desc 'Start up a local server that hosts your site.', 'OMG HI'

    def server
      puts 'OMG SERVER TIMEZ!'
    end
  end
end
