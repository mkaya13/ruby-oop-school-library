require_relative 'app'
require_relative 'choices'

def main
  app = App.new
  puts ['Welcome to School Library App!', '']
  check_options(app)
end

main
