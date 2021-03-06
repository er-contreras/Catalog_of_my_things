require_relative 'item'
class Source
  attr_reader :items, :name

  def initialize(name, id = Random.rand(1..100))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    if item.instance_of?(Item)
      @items << item
      item.add_source(self)
    else
      'Please insert a proper item here'
    end
  end
end
