require 'asciiart'
a = AsciiArt.new("http://www.evangogh.org/images/paintings/self-portrait.jpg")
  

puts a.to_ascii_art(color: true)