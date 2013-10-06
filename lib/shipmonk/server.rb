require 'rack'

class Shipmonk::Server < Rack::Builder
  def initialize
    super do
      use Rack::Static, urls: ['/images', '/styles', '/scripts'], root: 'public'
      use Rack::Reloader
      run self
    end

    def call env
      responder = RequestResponder.new Rack::Request.new(env)
      responder.respond
    end
  end
end

require 'shipmonk/server/request_responder'
