require_relative '../book.rb' 
require_relative '../rental.rb'
require_relative '../student.rb'

describe Book do 
   context "Checks whether Book class produces intended object output" do 
      
      it "Initialize a new Book and check whether it is an instance of intended class" do 
         newBook = Book.new("Outliers", "Malcolm Gladwell")
         expect(newBook).to be_instance_of Book 
      end 

      it "Checks if a book contains a rental" do
        person = Student.new(23, "Wassim", parent_permission: true)
        newBook = Book.new("Outliers", "Malcolm Gladwell")
        newRental = Rental.new('2022/05/01', newBook, person)
        newBook.add_rental(newRental)
        expect(newBook.rentals[0].date).to eq ('2022/05/01')
      end
   end 
end