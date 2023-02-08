require_relative '../person.rb' 

describe Person do 
   context "Checks whether Person class produces intended object output" do 
      
      it "Initialize a new Person and check whether it is an instance of intended class" do 
         newPerson = Person.new(23, "Teacher", "Mert", parent_permission:true)
         expect(newPerson).to be_instance_of Person 
      end 

      it "Checks can_use_services? function" do
        newPerson = Person.new(39, "Student", "Mehmet", parent_permission:true)
        expect(newPerson.can_use_services?).to be_truthy
      end

      it "Checks correct_name function" do
        newPerson = Person.new(25, "Teacher", "Selin", parent_permission:true)
        expect(newPerson.correct_name).to eq("Selin")
      end
   end 
end