require 'erb'

# Main gem class;
module ERBR
    class << self
        # Renders template;
        #
        # Example:
        #   >> render("template.html.erb", "layout.html.erb", args)
        #
        # Arguments: 
        #   args => holds flexible data type to make variables available for erb placeholders;
        #   args["name"] => "Fushiguro Toji": this way views can see @args["name"] making the value avalible for view;  

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

        # Bound template with layout;
        
        private
        def bind_template_to_layout(layout_file)
            yield

            ERB.new(layout_file).result(binding)
        end
    end
end