# HashKeys

A teeny-tiny gem to provide ferquently duplicated hash methods for selecting/rejecting keys

## Installation

Add this line to your application's Gemfile:

    gem 'hash_keys'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hash_keys

## Usage

Just require `hash_keys` to add the extra methods like `select_keys` and `reject_keys` methods.

A complete example of all of the patched methods being used is:
```ruby
require 'hash_keys'

hash = {foo: 1, 'bar' => 2, baz: 3}

hash.select_keys(:foo, 'bar') # => {:foo=>1, "bar"=>2}
hash.retain_keys(:foo, 'bar') # => {:foo=>1, "bar"=>2}

hash.reject_keys(:foo, 'bar') # => {:baz=>3}
hash.eject_keys(:foo, 'bar') # => {:baz=>3}
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/hash_keys/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
