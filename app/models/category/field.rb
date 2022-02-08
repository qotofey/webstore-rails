# frozen_string_literal: true

class Category::Field
  include Mongoid::Document
  embedded_in :category
end
