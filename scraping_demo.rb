require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts "which ingridient you would like to search?"
ingredient = gets.chomp

url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

url = URI.open(url).read
parsed_data = Nokogiri::HTML(url)

recipes_to_be_scraped = []

# puts parsed_data.search(".standard-card-new__article-title")
parsed_data.search(".standard-card-new__article-title").each do |element|
  puts element.text.strip
  recipes_to_be_scraped << "https://www.bbcgoodfood.com/#{element.attribute("href").value}"
end

# recipes_to_be_scraped.each do |recipe|
# end
