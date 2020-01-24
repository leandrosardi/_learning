class Person
  attr_accessor :national_id_number
  def initialize(id)
    self.national_id_number = id
  end
  def to_s
    "id:#{self.national_id_number}"
  end
end

a = []
a << Person.new(1)
a << Person.new(2)
a << Person.new(3)
a << Person.new(4)
a << Person.new(5)

puts a.to_s
# => [#<Person:0x1955178 @national_id_number=1>, #<Person:0x1955160 @national_id_number=2>, #<Person:0x1955058 @national_id_number=3>, #<Person:0x1954fc8 @national_id_number=4>, #<Person:0x1954f98 @national_id_number=5>]

puts a.map { |p| p.national_id_number }.to_s
# => [1, 2, 3, 4, 5]


