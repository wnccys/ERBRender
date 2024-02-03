module ERBrender
    def render(file, *args)
        template = File.read("views/#{file}.html.erb")
        template_output = ERB.new(template).result(binding)

        res = Rack::Response.new(bind_layout { template_output })
    end

    def bind_layout(&block)
        layout = File.read("views/layout.html.erb")
        ERB.new(layout).result(binding)
    end
end