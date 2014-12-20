class ProjectList
  def initialize
    @proj = []
  end

  def count
    @proj.count
  end

  def process_items(items)
    items.each do |i|
      @proj << Project.new(i[:title], i[:program], i[:year], i[advisor], i[:team])
    end
  end
end
