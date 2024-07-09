require "open-uri"
require "nokogiri"

url = "https://openlibrary.org/search?q=harry+potter&mode=everything"

html_file = URI.open(url).read

html_doc = Nokogiri::HTML(html_file)

html_doc.search(".details").each do |book_card|
  # puts book_card.search(".booktitle").text.strip
  p book_card.search(".booktitle a").attribute("href").value
end
