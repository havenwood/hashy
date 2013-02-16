require 'hashy/version'

class Hash
  def map_pair &block
    Hash[map &block]
  end
  
  def map_key
    each_pair.with_object({}) do |(key, value), result|
      result[yield key] = value
    end
  end
  
  def map_value
    each_pair.with_object({}) do |(key, value), result|
      result[key] = yield value
    end
  end
end
