class Author
    attr_accessor :id, :first_name, :last_name, :items
  
    def initialize(first_name, last_name, id = Random.rand(1..10_000))
      @id = id
      @first_name = first_name
      @last_name = last_name
      @items = []
    end
  
    def add_item(item)
      @items << item unless @items.include?(item)
      item.add_author(self)
    end
  end
  