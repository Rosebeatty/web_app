require_relative "./ItemClass"

RSpec.describe do 
    it 'should return true' do
        description = description
        item = Item.new(description)
        expect(item.complete_task).to equal(true)
    end
end 
   