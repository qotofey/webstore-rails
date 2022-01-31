module RecursivelyEmbeddable
  extend ActiveSupport::Concern

  included do
    attr_accessor :parent_id

    before_validation :check_parent
  end

  def check_parent
    return if @parent_id.blank?

    # self.class.find(@parent_id).send("child_#{self.collection_name}").build()
  end
end
