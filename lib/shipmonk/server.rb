class Shipmonk::Server < Rack::Builder
  def initialize
    super do
      use Rack::Static urls: ['/images', '/styles'], root: 'public'
      use Rack::Reloader
      run self
    end


  end
end
