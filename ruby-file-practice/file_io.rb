filename = 'sample.txt'
somefile = File.open(filename, 'w') # w overwites all contents in the file
somefile.puts 'Hello file!'
somefile.close

somefile = File.open(filename, 'a') # a appends text to the end of the existing file content
somefile.puts 'Hello again!'
somefile.close

File.open('new_file.txt', 'w') do |file|
  file.puts "HELLO FILE!!!!"
end

require 'rubygems'
require 'rest-client'

# write wikipedia homepage data to local html file
wiki_url = 'https://en.wikipedia.org/'
File.open('wiki-page.html', 'w') do |file|
  file.write(RestClient.get(wiki_url))
end

File.open('lorem_ipsum.txt', 'w') do |file|
  file.puts "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu posuere est. Nulla aliquam tincidunt rutrum.
Sed arcu libero, varius quis urna et, dapibus finibus arcu. Donec a volutpat nunc. Nullam semper libero a ante ullamcorper fermentum et quis diam.
Duis congue sapien iaculis nisl ullamcorper malesuada. Nam luctus, lacus congue molestie condimentum, enim magna aliquet nulla, porttitor ultrices turpis quam vel nibh.
Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer nec tortor at justo facilisis accumsan.
In id auctor tellus, in condimentum tortor. Sed dignissim est non mauris maximus placerat. Integer semper auctor viverra."
end

File.open('lorem_ipsum.txt', 'r') do |file|
  contents = file.read
  puts contents
end

puts
puts

lorem_ipsum = File.open('lorem_ipsum.txt', 'r')
contents = lorem_ipsum.read
puts contents

puts 'this will not print, end of file reached:'
contents = lorem_ipsum.read
puts contents
lorem_ipsum.close


lorem_ipsum = File.open('lorem_ipsum.txt', 'r') do |file|
  line = file.readline
  puts line
end

File.open('sample.txt', 'r').readlines.each do |line|
  puts line
end
