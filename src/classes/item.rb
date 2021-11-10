class Item
  attr_reader :genre, :author, :label, :source

  def initialize(publish_date, id = Random.rand(1..10_000), archived: false)
    @id = id
    @publish_date = publish_date
    @archived = archived
  end
end
