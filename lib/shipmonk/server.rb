require 'rack'
require 'rack-livereload'

class Shipmonk::Server < Rack::Server
  def middleware
    middlewares = []
    middlewares << [Rack::Static, { urls: ['/images', '/styles', '/scripts'], root: 'public' }]
    middlewares << [Rack::Reloader]
    middlewares << [Rack::LiveReload]
    Hash.new(middlewares)
  end

  def call(env)
    responder = RequestResponder.new Rack::Request.new(env)
    responder.respond
  end
end

require 'shipmonk/server/request_responder'
