class Company < ActiveRecord::Base
  has_many :employees

  validates :name, length: { maximum: 50 }
end
