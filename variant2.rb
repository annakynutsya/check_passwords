lines = File.readlines('passwords.txt')

valid_passwords = 0

lines.each do |line|
  character = line.match(/([a-z])\s/)[1]

  min_quantity, max_quantity = line.match(/\s(\d+)-(\d+):\s/)[1..2].map(&:to_i)

  password = line.match(/:\s(.+)/)[1]

  character_quantity = password.count(character)

  if character_quantity >= min_quantity && character_quantity <= max_quantity
    valid_passwords += 1
  end
end

puts valid_passwords
