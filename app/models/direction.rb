class Direction < ActiveRecord::Base
  has_many :tours
  has_many :types, through: :tours

  validates :name, presence: true, length: { maximum: 50 }
end
