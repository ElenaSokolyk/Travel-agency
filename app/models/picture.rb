class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  validates :imageable_id, presence: true,
                           numericality: { only_integer: true, greater_than: 0 } 
  validates :name, length: { maximum: 50 }
end
