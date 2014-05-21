# OmniAuth Test Harness

A simple Ruby on Rails app to test OmniAuth strategies.

https://github.com/PracticallyGreen/omniauth-test-harness

## Usage

Add the name of the omniauth strategy gem to be tested to this application's `Gemfile`:

```ruby
gem 'omniauth-new-strategy'
```

And then execute:

```shell
$ bundle
```

Configure the strategy in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :new_strategy
end
```

Start this test application:

```shell
$ rails server
```

This application can also be deployed to [Heroku](http://www.heroku.com/).

## Authors

Authored by [Rajiv Aaron Manglani](http://www.rajivmanglani.com/).

Inspired by [sample-saml-strategy](https://github.com/raecoo/sample-saml-strategy) from Raecoo Cao.

## License

Copyright (c) 2013 [Practically Green, Inc.](http://www.practicallygreen.com/).
All rights reserved. Released under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
