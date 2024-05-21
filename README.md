# <div align="center"> erbr </div>
erbr makes the bound and rendering of a given template inside a given layout allowing parameters to be passed and used inside It dinamically. As it uses a generic class algorithm (erb) It can be used in *all* plain text format files such as JSON, JavaScript, TypeScript, HTML, CSS, YAML, Markdown, SQL among others.

## Installation
RubyGems:
```
gem install erbr
```

Gemfile: 
```sh
gem "erbr", '~> 0.0.2'
```

## Usage
erbr works with a template and optional layout or arguments:
<br>
```html
ERBR.render("template.html.erb", "layout.html.erb", :msg => "Binded Argument!")

# => <title>Layout Title</title>
# => <p>Template Content Binded With Layout</p>
# => <span>Binded Argument!</span>
```
JSON files:
```ruby
@post = {
    :method => "POST",
    :url => "https://localhost:3000",
    :body => {
        :key => "value"
    }
}

ERBR.render("example.json.erb", nil, @post)


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
```rspec spec/rspec_test_erbr.rb``` to run all behavior driven tests or<br>
```rspec spec/{format}_test.rb``` to run available specific examples tests.
<br>

## License
This project is under MIT license which grants you permission to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software.
