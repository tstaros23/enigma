require './lib/key'
require './lib/offset'
require './lib/encrypt'
require './lib/decrypt'

class Enigma
  def initialize
    @offset = Offset.new
    @key_generator = Key.new
  end

  def encrypt(message, provided_key = nil, provided_date = nil)


    key = provided_key.nil? ? @key_generator.generate_key : provided_key
    date = provided_date.nil? ? @offset.generate_date : provided_date
    encrypter = Encrypt.new(message, @key_generator.create_shift_keys(key) , @offset.create_offset(date))
    {
      encryption: encrypter.encrypt,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, provided_date = nil)
    date = provided_date.nil? ? @offset.generate_date : provided_date
    decryptor = Decrypt.new(ciphertext, @key_generator.create_shift_keys(key) , @offset.create_offset(date))
    {
      decryption: decryptor.decrypt,
      key: key,
      date: date
    }
  end
end
