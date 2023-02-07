FileUtils.mkdir_p('saved_data')
base = "#{Dir.pwd}/saved_data"
File.open("#{base}/books.json", 'w+')
File.open("#{base}/people.json", 'w+')
File.open("#{base}/rentals.json", 'w+')
