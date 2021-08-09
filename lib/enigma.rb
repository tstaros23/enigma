require './lib/key'
require './lib/offset'
require './lib/encrypt'

class Enigma

  def encrypt(message, provided_key = nil, provided_date = nil)

    offset = Offset.new
    key_generator = Key.new
    key = provided_key.nil? ? key_generator.generate_key : provided_key
    date = provided_date.nil? ? offset.generate_date : provided_date
    encrypter = Encrypt.new(message, key_generator.create_shift_keys(key) , offset.create_offset(date))
    encryption = encrypter.encrypt
    {
      encryption: encryption,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date)

  end

  def keys

  end
end
