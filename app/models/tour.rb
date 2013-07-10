class Tour < ActiveRecord::Base
  belongs_to :direction
  belongs_to :type
  has_one :order
  has_many :pictures, as: :imageable
  
  validates :price, numericality: { greater_than: 0 } 
  validates :type_id, :direction_id, presence: true,
                                     numericality: { only_integer: true, greater_than: 0 } 
end
