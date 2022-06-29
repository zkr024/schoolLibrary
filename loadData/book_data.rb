require 'json'
require_relative '../school/book'

def book_data(book)
  File.write('./data/book.json', JSON.pretty_generate([])) unless File.exist?('./data/book.json')
  @file_book = File.read('./data/book.json')
  return if @file_book.empty?

  data_book = JSON.parse(@file_book)
  data_book.map do |value|
    title = value['title']
    author = value['author']
    book_data = Book.new(title, author)
    book << book_data
  end
end
