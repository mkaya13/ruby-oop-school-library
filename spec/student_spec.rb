require_relative '../student.rb'
require_relative '../classroom.rb'


describe Student do 
   context "Checks whether Student class produces intended object output" do 
      
      it "Initialize a new Person and check whether it is an instance of intended class" do 
         newStudent = Student.new(16, "Mert", parent_permission:false)
         expect(newStudent).to be_instance_of Student 
      end 

      it "Checks classroom? function" do
        newStudent = Student.new(25, "Simeon", parent_permission:true)
        classroom1 = Classroom.new('A1')
        newStudent.classroom = classroom1
        expect(newStudent.classroom).to be(classroom1)
      end
   end 
end
