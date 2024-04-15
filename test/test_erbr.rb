require 'minitest/autorun'
require 'erbr'

Class ErbrTest < Minitest::Test  
    def test_bind
        assert_equal "Successfully binded.", 
            ERBR::render("template.html.erb", "layout.html.erb", [:first => "1"])
    end
end