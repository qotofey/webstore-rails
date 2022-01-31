module RecursivelyEmbeddable
  attr_accessor :"parent_#{self.class.name.downcase}_id"
end
