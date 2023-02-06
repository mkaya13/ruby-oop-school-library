require_relative 'app'
require_relative 'choices.rb'

def main
  app = App.new
  puts ['Welcome to School Library App!', '']
  input = nil
  until input == 7
    display_options
    input = gets.to_i
    puts 'Invalid choice, please select a number from [1..7]' if input < 1 || input > 7
    input_process(input, app)
  end
end

main
