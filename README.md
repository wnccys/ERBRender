# <div align="center"> erbr </div>
erbr makes the bound and rendering of a given template inside a given layout allowing parameters to be passed and used inside It dinamically. As it uses a generic class algorithm (erb) can be used in *all* plain text format files such as JSON, JavaScript, TypeScript, HTML, CSS, YAML, Markdown, XML, SQL etc.

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
# => <span>Binded Argument!</span>
```
JSON files:
```
@post = {
    :method => "POST",
    :url => "https://localhost:3000",
    :body => {
        :key => "value"
    }
}

ERBR.render(__dir__ + "/../lib/example.json.erb", nil, @post)


# => {
# =>   "method": POST,
# =>   "url": "https://localhost:3000",
# =>   "body": {
# =>     "key": "value"
# =>   }
# => }
```
<div align="center">

</div>

## Testing
simple as run ```rspec spec/rspec_test_erbr.rb``` to run all behavior driven tests or
```rspec spec/{name}.{format}.erb``` to run available specific examples tests.
<br>

## License
This project is under MIT license which grants you permission to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software.
