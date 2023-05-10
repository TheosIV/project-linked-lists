# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/linked_list'

tst = LinkedList.new
tst.append('caca')
tst.append('zab')
tst.append('trma')
p tst

tst.prepend('zabbbi')
p tst

puts tst.size

p tst.head_value

p tst.tail

p tst.at(1)

p tst.pop
p tst

p tst.contains?('sexy garcon')
p tst.contains?('zab')
p tst.contains?('caca')
p tst.contains?('trma')
p tst.contains?('zabbbi')

p tst.find('zab')
p tst.find('trma')

puts tst

p tst.insert_at('jaja', 2)
p tst

puts "\n\nremove_at:"
p tst.remove_at(0)

puts "\n"
p tst.remove_at(1)
p tst

puts "\n"
p tst.remove_at(1)
p tst
