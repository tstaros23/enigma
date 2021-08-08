require './lib/key'
class Encrypt

  def initialize
    @alphabet = (("a".."z").to_a << " ")
    @random_key = Key.create_shift_keys
    @offset = Offset.create_offset
  end
  def create_shifts
      shifts = Hash.new
      @random_key.each do |key, value|
        shifts[key] = value + @offset[key]
      end
      shifts
      require "pry"; binding.pry
      4
  end
  def encrypt

  end
end
