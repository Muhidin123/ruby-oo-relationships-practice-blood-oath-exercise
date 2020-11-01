RSpec.describe 'Follower' do
    let(:stella) { Follower.new('Stella', 21, "YOLO") }

    context 'instantiation' do
      describe '::new' do
        it 'a new follower is instantiated with a name ' do
          expect(stella.age).to eq 21
          stella.name = "Not stella"
          expect(stella.name).to eq "Not stella" 
        end
        it 'a new follower is instantiated with a name ' do
          expect(stella.name).to eq "Stella"
        end
        it 'join to cult ' do 
          cult = Cult.new("Maga", "Chicago", 2020, "YOLO")
          stella.join_cult(cult)
          expect(stella.cults.first).to eq(cult)
        end
      end
    end

end

#Trying to write tests for app/models