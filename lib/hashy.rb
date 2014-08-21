require 'hashy/version'

class Hash
  def map_pair &block
    Hash[map &block]
  end

  def map_key
    each_with_object({}) { |(k, v), h| h[yield(k)] = v }
  end

  def map_value
    each_with_object({}) { |(k, v), h| h[k] = yield(v) }
  end
end
