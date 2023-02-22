# frozen_string_literal: true

require_relative 'item'
class Movie < Item
  attr_accessor :publish_data, :silent, :name

  def initialize(name, publish_date, silent)
    super(publish_date)
    @name = name
    @silent = silent
  end

  def can_be_archived?
    super || @silent
  end
end
