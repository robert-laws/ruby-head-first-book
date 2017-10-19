# Arrays and Blocks

names = ['bob', 'hal', 'kal', 'mel', 'sal', 'jim', 'ned']

p names[1] # index number 1 of array names

# array methods

p names.first
p names.last

p names.length

p names.include?('mel')
p names.find_index('mel')

names.push('pam')

p names.pop

p names.shift

names << 'bob'

p names

p names.join("--")

new_names = names.collect do |name|
  name.split("")
end
p new_names.flatten.join("*")

index = 0
while index < names.length
  p names[index]
  index += 1
end
