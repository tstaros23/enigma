require './lib/key'
class Encrypt

  def initialize
    @alphabet = (("a".."z").to_a << " ")
    @key = Key.create_shift_keys
    @offset = Offset.new
  end
  def create_shifts

    require "pry"; binding.pry
  end
end
