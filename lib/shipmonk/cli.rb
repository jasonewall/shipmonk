require 'thor'
require 'shipmonk'

module Shipmonk
  class CLI < Thor
    include Thor::Actions
    desc 'new <name>', 'Create a new Shipmonk site'

    def new(site_name)
      site_path = File.expand_path site_name, Dir.pwd
      abort "Site already exists, choose another name or delete the existing site." if Dir.exists? site_path
      create_site site_path
    end

    desc 'server', 'Start up a local server that hosts your site.'

    def server(*args)
      require 'shipmonk/server'
      # get rid of 'server' in the args list
      # otherwise :config in default_options gets set to 'server'
      ARGV.shift
      Shipmonk::Server.new.start
    end

    def self.source_root
      File.expand_path '../shipmonk/default', File.dirname(__FILE__)
    end

  private

    def create_site(site_path)
      self.destination_root = site_path
      Dir.mkdir destination_root
      copy_file 'config.ru'
      copy_file 'Gemfile'
      directory 'src'
    end
  end
end
