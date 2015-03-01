require "shipmonk/version"
require 'pathname'

module Shipmonk
  def self.root
    @root ||= Pathname.new File.expand_path(Dir.pwd)
  end
end
