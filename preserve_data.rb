require 'fileutils'
require 'json'

FileUtils.mkdir_p('saved_data')
# File.open("#{base}/books.json", 'w')
# File.open("#{base}/people.json", 'w')
# File.open("#{base}/rentals.json", 'w')

def write_data(filename, array)
  case filename
  when 'people'
    write_people(array)
  when 'rentals'
    write_rentals(array)
  when 'books'
    write_books(array)
  else
    puts 'Error!'
  end
end

def write_books(array)
  base = "#{Dir.pwd}/saved_data"
  if File.read("#{base}/books.json") == ""
    empty_array = []
  else
    empty_array = JSON.parse(File.read("#{base}/books.json"))
  end
  array.each { |e| empty_array.push({ title: e.title, author: e.author }) }
  File.write("#{base}/books.json", empty_array.to_json, mode: 'w')
end

def write_rentals(array)
  base = "#{Dir.pwd}/saved_data"
   if File.read("#{base}/rentals.json") == ""
    empty_array = []
  else
    empty_array = JSON.parse(File.read("#{base}/rentals.json"))
  end
  empty_array = []
  array.each { |e| empty_array.push({ date: e.date, book: e.book.title, person: e.person.id }) }
  File.write("#{base}/rentals.json", empty_array.to_json, mode: 'w')
end

def write_people(array)
  base = "#{Dir.pwd}/saved_data"
   if File.read("#{base}/people.json") == ""
    empty_array = []
  else
    empty_array = JSON.parse(File.read("#{base}/people.json"))
  end
  empty_array = []
  array.each { |e| empty_array.push({ person: e.class, name: e.name, id: e.id, age: e.age }) }
  File.write("#{base}/people.json", empty_array.to_json, mode: 'w')
end
