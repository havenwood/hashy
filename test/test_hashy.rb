$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__), '../lib')
require 'hashy'
require 'hashy/version'
require 'minitest/autorun'
require 'minitest/pride'

describe Hash do
  before do
    @hash = {one: 1, aim: true}
  end
  
  describe 'Hash#map_pair' do
    it 'modifies key and value' do
      k_and_v_to_s = @hash.map_pair { |k, v| [k.to_s, v.to_s] }
      assert_equal({'one' => '1', 'aim' => 'true'}, k_and_v_to_s)
    end
  end
  
  describe 'Hash#map_key' do
    it 'modifies key only' do
      k_to_s = @hash.map_key &:to_s
      assert_equal({'one' => 1, 'aim' => true}, k_to_s)
    end
  end
  
  describe 'Hash#map_value' do
    it 'modifies value only' do
      v_to_s = @hash.map_value &:to_s
      assert_equal({:one => '1', :aim => 'true'}, v_to_s)
    end
  end
end
