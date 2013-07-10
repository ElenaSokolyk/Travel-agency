class Employee < ActiveRecord::Base
  belongs_to :company
  has_many :orders
  has_many :pictures, as: :imageable

  validates :name, :surname, presence: true, length: { maximum: 50 }
  validates :company_id, presence: true,
                         numericality: { only_integer: true, greater_than: 0 } 
end
