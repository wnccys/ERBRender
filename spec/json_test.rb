require_relative '../lib/erbr'
require 'erb'

@post = {
    :method => "POST",
    :url => "https://localhost:3000",
    :headers => {
        :user_agent => "Host/1.0",
        :content_type => "Content-Type"
    },
    :body => {
        :key => "value"
    }
}

puts ERBR.render(__dir__ + "/../lib/example.json.erb", nil, @post)