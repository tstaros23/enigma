require './lib/enigma'

file_to_encrypt = ARGV[0]
encrypted_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]
message = File.read(file_to_encrypt).chomp


encryption = Enigma.new.encrypt(message, key, date)
File.write(encrypted_file, encryption[:encryption])
puts "Created '#{encrypted_file}' with the key #{encryption[:key]} and date #{encryption[:date]}"
