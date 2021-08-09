class Enigma

  def encrypt(message, key, date)
    #create offset
    #send message, key, date and offset to Encrypt.new

    encrypter = Encrypt.new(message, key, offset)
  end

  def decrypt(ciphertext, key, date)

  end

  def keys

  end
end
