describe Item do
  before :each do
    @item = Item.new('2021-12-12')
  end

  describe '#new' do
    it 'returns a new book object' do
      expect(@item).to be_an_instance_of(Item)
    end

    it 'throws an ArgumentError when not given parameters' do
      expect { Item.new }.to raise_error(ArgumentError)
    end

    it '#publish_date' do
      expect(@item.publish_date).to eql('2021-12-12')
    end
  end
end
