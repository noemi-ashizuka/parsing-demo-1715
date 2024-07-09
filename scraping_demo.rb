require "open-uri"
require "nokogiri"

url = "https://openlibrary.org/search?q=harry+potter&mode=everything"

html_file = URI.open(url).read

html_doc = Nokogiri::HTML(html_file)

# search the book card element
html_doc.search(".details").each do |book_card|
  # search for the title of the book inside the card
  puts book_card.search(".booktitle").text.strip
  # search for the url inside the a tag (attribute)
  puts book_card.search(".booktitle a").attribute("href").value
end
