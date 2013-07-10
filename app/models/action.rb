class Action < ActiveRecord::Base
  belongs_to :category

  validates :category_id, presence: true,
                          numericality: { only_integer: true, greater_than: 0 } 
  validates :name, length: { maximum: 50 }
end
