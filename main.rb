require 'digest'
# Digest::MD5.hexdigest 'admin'
require 'digest/sha1'
# Digest::SHA1.hexdigest 'admin'

puts 'Введите слово или фразу для шифрования:'
encrypt = gets.chomp

puts 'Каким способом зашифровать:'
puts <<~END
  1. MD5
  2. SHA1
END
choice = 0

choice = Integer(gets, exception: false) until (1..2).include?(choice)
result = case choice
         when 1 then Digest::MD5.hexdigest encrypt
         when 2 then Digest::SHA1.hexdigest encrypt
         end

puts 'Вот что получилось:'
puts result
