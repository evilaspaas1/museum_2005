class Museum
  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    add_exhibit
    patron = patron.name
    @exhibits.each do |exhibit|
      exhibit.each do |patron|
        if patron.interests == @exhibits[1] && @exhibits[0]
          recommend_exhibits(patron)
        else patron.interests == @exhibits[2]
          recommend_exhibits(patron)
        end
      end
    end
  end
end
