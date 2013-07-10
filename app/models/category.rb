class Category < ActiveRecord::Base
  has_many :actions
  has_many :clients

  validates :name, length: { maximum: 50 }
end
