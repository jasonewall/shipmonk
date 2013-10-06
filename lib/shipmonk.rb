require "shipmonk/version"
require 'shipmonk/server'
require 'pathname'

module Shipmonk
  def self.root
    @root ||= Pathname.new File.expand_path(Dir.pwd)
  end
end
