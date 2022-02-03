# frozen_string_literal: true

class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include RecursivelyEmbeddable

  field :name, type: String
  field :examples, type: String
  field :description, type: String

  field :created_by_user_id
  field :updated_by_user_id

  # root.child_categories.build()
  # child.parent_category
  #
  #recursively_embeds_many

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :examples, presence: true

  before_validation :identifiers_preprocess, :names_preprocess

  def ensures_parent_fields; end

  private

  def identifiers_preprocess
    # self.id = id
  end

  def names_preprocess
    self.name = name.strip
  end
end
