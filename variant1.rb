valid_passwords = 0

File.foreach('passwords.txt') do |line|
  requirements, password = line.strip.split(':')

  character, range = requirements.split

  min_quantity, max_quantity = range.split('-').map(&:to_i)

  character_quantity = password.count(character)

  if min_quantity <= character_quantity && character_quantity <= max_quantity
    valid_passwords += 1
  end
end

puts valid_passwords
