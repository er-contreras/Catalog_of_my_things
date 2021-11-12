describe DB do
  before :each do
    @db = DB.new
  end

  describe '#new' do
    it 'return constructor properties as an object' do
      expect(@db).to be_an_instance_of(DB)
    end

    it 'throws an ArgumentError when given parameters' do
      expect { DB.new(1, 2, 3) }.to raise_error(ArgumentError)
    end

    it 'expect @db to return true' do
      expect(@db.save({ data1: 'data1', data2: 'data2' }, 'book')).to be(true)
    end
  end
end
