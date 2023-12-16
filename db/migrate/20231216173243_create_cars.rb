# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.string :model
      t.integer :year
      t.string :description
      t.string :category
      t.string :facebook
      t.string :twitter
      t.string :website

      t.timestamps
    end
  end
end
