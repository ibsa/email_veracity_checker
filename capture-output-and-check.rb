require_relative 'lib/email_check.rb'

capture = StringIO.new
is_valid = EmailCheck.run("kiran@joshsoftware.com", "no-reply@joshsoftware.com", "joshsoftware.com", nil, capture).valid?

puts "is valid: #{is_valid}"
puts "the captured output:"
capture.rewind
puts capture.readlines
