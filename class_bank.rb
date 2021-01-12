class AccountHolder

  @@account_numbers = []

  def self.account_numbers
    @@account_numbers
  end

  attr_accessor :address, :email
  attr_reader :name, :account_number, :balance
  attr_writer :password

  def initialize(details = {})
    defaults = { balance: 0, address: 'add-address', email: 'add-email'}
    defaults.merge!(details)

    @name = defaults[:name]
    @balance = defaults[:balance]
    @address = defaults[:address]
    @email = defaults[:email]
    @password = generate_password
    @account_number = generate_account_number
  end

  def top_up(amount)
    @balance += amount
    puts "You've topped up #{amount}. Your new balance is #{balance}. Thanks for banking with Class Bank!"
  end

  def withdraw(amount)
    if amount <= balance
      @balance -= amount
      puts "You've withdrawn #{amount}. Your new balance is #{balance}. Thanks for banking with Class Bank!"
    else
      puts "You have insufficient funds for this transaction. Please top up to try again."
    end
  end

  private

  def generate_account_number
    while true
      account_number = rand(10000000..99999999)
        unless @@account_numbers.include?(account_number)
          @@account_numbers << account_number
          return account_number
      end
    end
  end

  def generate_password
    letters = [*'a'..'z'].sample + [*'a'..'z'].sample + [*'a'..'z'].sample
    digits = rand(10000..99999)
    password = "#{letters}#{digits}"
  end
end
