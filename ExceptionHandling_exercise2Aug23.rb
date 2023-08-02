# opening an url and checking for wrong data on the page url, then try to handle the error

require "open-uri"
require "timeout"

page_url = "https://www.wikipedia.org/"

begin
wikipage = open("#{page_url}/#{"google"}")
rescue Exception => e
  puts "Error #{e}"
else
  wikidata = wikipage.read
ensure
  puts "sleeping"
  sleep 3
end

if wikidata
  File.open("wiki+google.html",'w'){|f| f.write(wikidata)}
end
#================================================================

a = ["one","two",3,4,"five","6"]
hash = {"one"=>"1","two"=>"2","three"=>"3"}
begin
p hash.keys.upcase
rescue Exception => e
  puts "Exception is" 
  puts e.message   
  puts e.backtrace.inspect  
ensure
  p hash.keys.class
  hash.keys.each do 
    |ele| p ele.upcase
end
end
  #===============================================================

# getting different types of data into different arrays
values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

num_arr = []
float_arr = []
p values.class
num_pattern = (/\d{1,5}/)
for i in values
  if i.is_a? Integer
    num_arr.append(i)
  elsif 
    i.is_a? Float
    float_arr.append(i)
  else
    next
  end
end
p num_arr
p float_arr