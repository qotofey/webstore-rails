# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @current_year = Time.now.year + 1
  end
end
