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
        #   args: (Any) holds flexible data type to make variables available for erb placeholders;
        # args["name"] => "Fushiguro Toji": this way views can see @args["name"] making the value available for view throught @args;  
        # so ERBR.render(any, any, :suguru => "geto") is available throught @args[0]["suguru"];

        def render(template_name, layout_name, *args)
            template_file = File.read(template_name)
           
            args.length > 0 ? @args = args : args = nil

            if layout_name 
                layout_file = File.read(layout_name) 

                rendered_template = ERB.new(template_file).result(binding)
                bind_template_to_layout(layout_file) { rendered_template }
            else
                ERB.new(template_file).result(binding)
            end
        end

        # Bounds template with layout;

        private
        def bind_template_to_layout(layout_file)
            yield

            ERB.new(layout_file).result(binding)
        end
    end
end