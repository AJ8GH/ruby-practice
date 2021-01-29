# ------------ subject ---------------
describe ClassRoom, '#initialize' do
  context 'creates new classroom object' do
    subject { ClassRoom.new([]).class }
    it { is_expected.to eq ClassRoom }
  end
# ------------ Rspec doubles --------------
  describe '#list_students' do
    it 'lists students in csv format' do

      student1 = double('Student')
      student2 = double('Student')

      allow(student1).to receive(:name) { 'Adam' }
      allow(student2).to receive(:name) { 'Mango' }

      classroom = ClassRoom.new([student1, student2])

      expect(classroom.list_students).to eq 'Adam,Mango'
    end
  end
end
