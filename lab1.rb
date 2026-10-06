def print_task_header(number)
  puts ""
  puts "----- ЗАВДАННЯ #{number} -----"
  puts ""
end

# Завдання 1
print_task_header(1)

UAH = 5000
EUR_RATE = 48.50
USD_RATE = 41.20

euros = UAH / EUR_RATE
dollars = UAH / USD_RATE

puts "Сума: #{UAH} грн"
puts "У євро: #{euros.round(2)} EUR"
puts "У доларах: #{dollars.round(2)} USD"

# Завдання 2
print_task_header(2)

numbers = [5, 0, 8, 3, 0, 7, 2]

result = numbers.each_with_index
               .reject { |number, index| number == 0 }
               .map { |number, index| number * index }

puts "Початковий масив: #{numbers}"
puts "Результат: #{result}"

# Завдання 3
print_task_header(3)

numbers = [12, 35, 48, 67, 23, 91, 45]

result_find = numbers.find { |number| number > 50 }
result_select = numbers.select { |number| number > 50 }.first

puts "Перший спосіб (find): #{result_find}"
puts "Другий спосіб (select.first): #{result_select}"

# Завдання 4
print_task_header(4)

movies = [
  { title: "Inception", duration: 148, genre: "Sci-Fi" },
  { title: "Interstellar", duration: 169, genre: "Sci-Fi" },
  { title: "The Dark Knight", duration: 152, genre: "Action" },
  { title: "Spider-Man", duration: 143, genre: "Action" },
  { title: "Titanic", duration: 195, genre: "Drama" },
  { title: "Forrest Gump", duration: 142, genre: "Drama" }
]

grouped_movies = movies.group_by { |movie| movie[:genre] }

grouped_movies.each do |genre, films|
  longest_movie = films.max_by { |movie| movie[:duration] }

  puts "#{genre}: #{longest_movie[:title]} — #{longest_movie[:duration]} хв"
end