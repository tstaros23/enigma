require './lib/enigma'

file_to_decrypt = ARGV[0]
encrypted_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]
ciphertext = File.read(file_to_decrypt).chomp

decryption = Enigma.new.decrypt(ciphertext, key, date)
File.write(encrypted_file, decryption[:decryption])
puts "Created '#{encrypted_file}' with the key #{decryption[:key]} and date #{decryption[:date]}"
