# <div align="center"> erbr </div>
erbr makes the bound and rendering of a given template inside a given layout allowing parameters to be passed and used inside it.

## Installation
RubyGems:
```
gem install erbr
```
Gemfile: 
```sh
gem "erbr", '~> 0.0.1'
```

## Usage
ERBR works with a template and optional layout or arguments:
<br>
```
ERBR.render("template.html.erb", "layout.html.erb", :msg => "Binded Argument!")

# => <title>Layout Title</title>
# => <p>Template Content Binded With Layout</p>
# => <p>Binded Argument!</p>
```
<div align="center">

</div>

## Testing
simple as run ```rspec spec/rspec_test_erbr.rb``` at root folder to run behavior driven tests.
<br>

## License
This project is under MIT license which grants you permission to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software.
