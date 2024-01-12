class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  def change
    add_column :users, :jti, :string, null: false
    add_index :users, :jti, unique: true
  end
end
