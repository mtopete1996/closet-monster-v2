# frozen_string_literal: true

class CreateCloths < ActiveRecord::Migration[7.0]
  def change
    create_table :cloths do |t|
      t.string :name
      t.date :last_time

      t.timestamps
    end
  end
end
