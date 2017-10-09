#database connetion
require "mysql2"
connect = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "", :database => "test")
result = connect.query("SELECT * FROM pet")
result.each {  |x| puts x }

print "What is the name of yor pet? "
name = gets.chomp

print "Who is the owner? "
owner = gets.chomp

print "What type of pet do you have? "
species = gets.chomp

#sends newly entered dara into the database
result = connect.query("INSERT INTO pet VALUES('#{name}', '#{owner}', '#{species}')")
#puts "Number of rows inserted: #{dbh.affected_rows}"

result = connect.query("SELECT * FROM pet")
result.each {  |x| puts x }

#puts "Here is your hash: '#{data_hash}'"
