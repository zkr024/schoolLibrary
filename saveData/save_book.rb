require 'json'

def save_book(book)
  book_data = []
  book.map do |val|
    info = {}
    info['title'] = val.title
    info['author'] = val.author
    book_data << info
  end
  File.write('./data/book.json', JSON.pretty_generate(book_data))
end
