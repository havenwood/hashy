# Hashy

[![Build Status](https://travis-ci.org/havenwood/hashy.png?branch=master)](https://travis-ci.org/havenwood/hashy)

A trivial implementation of three new Hash methods: map_pair, map_key & map_value. It's [been proposed](http://www.ruby-forum.com/topic/4410595) that these methods be added to the Ruby language. They're each just [one-liners in Ruby](https://github.com/havenwood/hashy/blob/master/lib/hashy.rb) but it seems they're quite handy.

## Installation

```bash
gem install hashy
```

## Usage

```ruby
require 'hashy'

hash = { aim: true }
#=> {:aim=>true}

hash.map_pair { |k, v| [k.to_s, v.to_s] }
#=> {"aim"=>"true"}

hash.map_key(&:to_s)
#=> {"aim"=>true}

hash.map_value(&:to_s)
#=> {:aim=>"true"}
```

## Credits

- dsisnero's [initial post on ruby-core](http://www.ruby-forum.com/topic/4410595)
- nobu's suggestion of appropriate method names and making a gem
- heftig's refactoring of the code

Thanks all!
