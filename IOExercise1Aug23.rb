#Exercise: Copy Wikipedia's front page to a file using block notation
require "open-uri"
require "rubygems"
# require "rest-client"

web_url = "http://en.wikipedia.org/"
local_wiki_file_name = "wiki_local.html"

# opening the web page using URI.open and reading content using readlines
page = URI.open(web_url).readlines 
#printing each line of the webpage to console output
read_page = page.each {|line| p "#{line}\n"}

#opening/creating local html file and saving the webpage data into this html page
local_page = File.open(local_wiki_file_name, "w+") do |file| file.write(read_page)
end

#===========================================================
# extract only the images from the webpage
images = read_page.scan(/\w+<img/){|w| p "#{w}"}


