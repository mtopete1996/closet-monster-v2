# frozen_string_literal: true

class Cloth < ApplicationRecord
  # validations
  validates :name, presence: true

  # scopes
  scope :by_name, -> { order('LOWER(cloths.name)') }
end
