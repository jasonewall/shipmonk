module Shipmonk
  ViewContext = Struct.new(:request) do
    def include_file(partial, locals = {})
      content = File.read(File.expand_path "src/_#{partial.to_s}.html.haml")
      Haml::Engine.new(content).render Object.new, locals
    end
  end
end
