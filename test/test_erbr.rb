require 'minitest/autorun'
require 'erbr'

class ERBRTest < Minitest::Test
    def base_test
        assert_equal "Successfully binded.", 
            ERBR::render(__dir__ + "../lib/template.html.erb", __dir__ + "../lib/layout.html.erb", [:first => "1"])
    end
end