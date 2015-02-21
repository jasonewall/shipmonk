module Shipmonk
  class ViewContext
    def livereload_tag
      %Q{<script type="text/javascript">
            var tag = '<script type="text/javascript" src="http://thejayvm.ca/livereload.js?host=';
            tag += location.hostname;
            tag += '"></scr';
            tag += 'ipt>';
            document.write(tag);
        </script>
      } unless ENV.fetch('SHIPMONK_ENV', :local).to_sym == :live
    end

    def include_file(partial, locals = {})
      content = File.read(File.expand_path "src/_#{partial.to_s}.html.haml")
      Haml::Engine.new(content).render Object.new, locals
    end
  end
end
