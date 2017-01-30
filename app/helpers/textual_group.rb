TextualGroup = Struct.new(:title, :items) do
  def template
    'shared/summary/textual'
  end

  def locals
    {:title => self.title, :items => self.items}
  end
end
