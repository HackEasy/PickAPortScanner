require 'socket'
require 'timeout'
require 'colorize'

puts "     || ".yellow
puts "    ==== ".yellow
puts "    |  |__ ".yellow
puts "    |  |-.\ ".yellow
puts "    |__|  \\ ".yellow
puts "     ||   || ".yellow
puts "   ======__| ".yellow
puts "  ________||__ ".yellow
puts " /____________\ ".yellow
puts "  _______________ ".yellow


print "IP Address or URL : ".blue
ip = gets.chomp

ports = 1024..49151
ports.each do |scan|
begin
Timeout::timeout(10){TCPSocket.new("#{ip}", scan)}
rescue
puts "closed : #{scan}".red
else
puts "open : #{scan}".green
end
end
sleep 2
