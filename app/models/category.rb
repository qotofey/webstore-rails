# frozen_string_literal: true

class Category
  include Mongoid::Document

  field :name, type: String
  field :slug, type: String
  field :examples, type: String
  field :description, type: String

  field :created_by_user_id
  field :updated_by_user_id

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :slug, presence: true, uniqueness: { case_sensitive: false }

  before_validation :identifiers_preprocess, :names_preprocess

  private

  def identifiers_preprocess
    self.slug = id
  end

  def names_preprocess
    self.name = name.strip.capitalize
  end
end
