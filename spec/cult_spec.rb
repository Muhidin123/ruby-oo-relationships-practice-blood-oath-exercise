RSpec.describe 'Cult' do
    let(:cult) { Cult.new("Maga", "Chicago", 2020, "YOLO") }
    
    context 'instantiation' do
      describe '::new' do
        it 'a new follower is instantiated with a name ' do
          #var = Follower.new('Stella', 21, "YOLO")
          expect(cult.name).to eq "Maga"
        end
      end
    end
end


#Trying to write tests for app/models