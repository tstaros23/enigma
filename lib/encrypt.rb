require './lib/key'
require './lib/offset'


class Encrypt
attr_reader :alphabet, :message, :key, :offset

  def initialize(message, key_shifts, offset)
    @alphabet = (("a".."z").to_a << " ")
    @message = message.downcase
    @key_shifts = key_shifts
    @offset = offset
  end


  def create_shifts
      shifts = Hash.new
      @key_shifts.each do |key, value|
        shifts[key] = value + @offset[key]
      end
      shifts
  end



  def encrypt
    chars = @message.split("")
    ciphered = ""
    shifts = create_shifts.values

    chars.each do |char|
      if @alphabet.include? char

          index = @alphabet.index(char)
          shift_index = (index + shifts.first) % 27
          ciphered << @alphabet[shift_index]
      else
        ciphered << char
      end
      shifts = shifts.rotate
    end
    ciphered
  end
end
