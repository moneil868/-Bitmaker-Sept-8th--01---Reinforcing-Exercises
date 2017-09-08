require 'pry'

array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seat_availability(array)
  array.each_with_index do |item, index|
    row_index = index

      item.each_with_index do |seat, index|
        if seat == nil
          puts
          print "Row #{row_index + 1} Seat #{index + 1} is free. Do you want to sit there? (y/n) "
          answer = gets.chomp

            if answer == 'y'
              print "What is your name? "
              name = gets.chomp
              array[row_index][index] = name
            end

        end

      end

  end
end


seat_availability(array)
puts array.inspect
