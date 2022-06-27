class RentalList
  def rental_list(rental, person)
    if rental.empty?
      puts 'There are no rentals'
    else
      print "person's ID: "
      id = gets.chomp.to_i
      record = person.filter_map do |i|
        i.name if i.id == id
      end
      loop do
        break if record.length.positive? || id.zero?

        puts "Invalid ID #{id}, please try again Or go back to the main menu by pressin 0"
        id = gets.chomp.to_i
        record = person.filter_map do |i|
          i.name if i.id == id
        end
      end
      value = record.join
    end
    puts "Name: #{value}"
    (rental.filter_map do |res|
      puts "Date: #{res.date}, Book '#{res.book.title}' by #{res.book.author}" if res.person.name == value
    end)
  end
end
