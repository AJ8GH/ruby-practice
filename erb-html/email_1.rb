class Email
  attr_accessor :from, :subject, :date
  def initialize(args = {})
    @from = args.fetch(:from)
    @subject = args.fetch(:subject)
    @date = args.fetch (:date)
  end
end

email = Email.new(subject: 'Homework this week', date: '2014-12-01', from: 'Ferdous')

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
