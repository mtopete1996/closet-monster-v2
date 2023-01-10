# frozen_string_literal: true

class Cloth < ApplicationRecord
  # scopes
  scope :by_name, -> { order('LOWER(name)') }
end
