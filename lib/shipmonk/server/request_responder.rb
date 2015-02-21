require 'haml'
require 'shipmonk/view_context'

class Shipmonk::Server::RequestResponder
  attr_accessor :request

  def initialize(request)
    @request = request
  end

  def respond
    if template_source_file.exist?
      content = compile_haml template_source_file
      Rack::Response.new.finish do |response|
        response['content-type'] = 'text/html'
        response.status = 200
        response.write content
      end
    else
      Rack::Response.new.finish do |response|
        response['content-type'] = 'text/plain'
        response.status = 404
        response.write "404ed!\n"
        response.write "file not found: #{request.path_info}\n"
      end
    end
  end

  def compile_haml(file, haml_options = {})
    content = File.read file
    engine = Haml::Engine.new(content, haml_options)
    engine.render Shipmonk::ViewContext.new
  end

  def template_source_file
    @template_source_file ||= Shipmonk.root.join 'src', case request.path_info
      when '/' then 'index.html.haml'
      when /\/(\w+)$/, /\/(.+).html$/ then "#{$1}.html.haml"
      else
        request.path_info
      end
  end
end
