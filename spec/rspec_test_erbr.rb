require 'spec_helper'
require 'erb'
require_relative '../lib/erbr'

RSpec.describe ERBR do 
    describe '.render' do 
        context 'when rendering a template' do 
            it 'renders the content inside template file' do
                result = ERBR.render(__dir__ + '/../lib/template.html.erb', nil) 
                expect(result).to include ('<p>Template Content Binded With Layout</p>')
            end
        end

        context 'when rendering with layout' do
            it 'renders template and binds it to layout' do 
                result = ERBR.render(__dir__ + '/../lib/template.html.erb', __dir__ + '/../lib/layout.html.erb')
                expect(result).to include ('<title>Layout Title</title>
<p>Template Content Binded With Layout</p>')
            end
        end

        context 'when rendering with layout and arguments' do
            it 'renders template and binds it to layout with arguments assigned' do 
                result = ERBR.render(__dir__ + '/../lib/template.html.erb',
                  __dir__ + '/../lib/layout.html.erb', :msg => "Binded Argument!")
                expect(result).to include ('<title>Layout Title</title>
<p>Template Content Binded With Layout</p>

<span>Binded Argument!</span>') 
            end
        end
    end
end