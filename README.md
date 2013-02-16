# Hashy

A Ruby gem implementing a few proposed methods for the Hash class: Hash#map_pair, Hash#map_key and Hash#map_value.

## Installation

```bash
gem install hashy
```

## Usage

```ruby
require 'hashy'
```

## Examples

```ruby
hash = { aim: true }
#=> {:aim=>true}
 
hash.map_value &:to_s
#=> {:aim=>"true"}
 
hash.map_key &:to_s
#=> {"aim"=>true}
 
hash.map_pair { |k, v| [k.to_s, v.to_s] }
#=> {"aim"=>"true"}
```

## Credits

- dsisnero's [initial post on ruby-core](http://www.ruby-forum.com/topic/4410595#new)
- nobu's suggestion of appropriate method names and making a gem
- heftig's refactoring of the code

Thanks all!

