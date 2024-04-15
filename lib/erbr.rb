require 'erb'

module ERBR
    class << self
        def render(template_name, layout_name, *args)
            template_file = File.read(template_name)
            layout_file = File.read(layout_name)

            if template_file == nil
                return "Error loading template file."
            elsif layout_file == nil
                return "Error loading layout file."
            end

            @args = args

            rendered_template = ERB.new(template_file).result(binding)

            bind_template_to_layout(layout_file) { rendered_template }
        end

        def bind_template_to_layout(layout_file)
            yield

            ERB.new(layout_file).result(binding)
        end
    end
end