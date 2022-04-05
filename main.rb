require 'digest'
# Digest::MD5.hexdigest 'admin'
require 'digest/sha1'
# Digest::SHA1.hexdigest 'admin'

puts 'Введите слово или фразу для шифрования:'
encrypt = gets.chomp

puts 'Каким способом зашифровать:'
puts <<~ENCRYPTION
1. MD5
2. SHA1
3. SHA2
ENCRYPTION
choice = 0

choice = Integer(gets, exception: false) until (1..3).include?(choice)
result = case choice
         when 1 then Digest::MD5.hexdigest encrypt
         when 2 then Digest::SHA1.hexdigest encrypt
         when 3 then Digest::SHA2.hexdigest encrypt
         end

puts 'Вот что получилось:'
puts result
