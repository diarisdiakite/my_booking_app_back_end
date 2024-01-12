# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :car, null: false, foreign_key: true
      t.integer :finance_fee
      t.integer :option_to_purchase_fee
      t.integer :total_amount_payable
      t.integer :duration
      t.timestamps
    end
  end
end
