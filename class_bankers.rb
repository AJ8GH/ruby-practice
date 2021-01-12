require_relative 'class_bank'

customer_details = { name: 'Adam Jonas', address: '7 Purley, London', balance: 10_000, email: 'adamjj247@gmail.com' }
adam_jonas = AccountHolder.new(customer_details)

p adam_jonas
p adam_jonas.name
p adam_jonas.email
p adam_jonas.address
p adam_jonas.account_number
p adam_jonas.balance

puts

customer_details = { name: 'Francis Bacon', balance: 2500 }
francis = AccountHolder.new(customer_details)

p francis

customer_details = { name: 'Prince Harry', address: 'Buckingham Palace', balance: 25_000_000, email: 'hazza@royals.co.uk' }
hazza = AccountHolder.new(customer_details)

p hazza

customer_details = { name: 'Don Draper', address: 'New York', balance: 5000 }
don = AccountHolder.new(customer_details)

p don

p AccountHolder.account_numbers

puts

adam_jonas.password = 'BetterPassword989!'

adam_jonas.email = 'adamjonas989@hotmail.com'
p adam_jonas.email

adam_jonas.address = '1 Yemen Rd, Yemen'
p adam_jonas.address

puts

adam_jonas.withdraw(150)
p adam_jonas.balance

puts

adam_jonas.withdraw(20_000)
p adam_jonas.balance

puts

adam_jonas.top_up(15_000)
p adam_jonas.balance

puts

adam_jonas.withdraw(20_000)
