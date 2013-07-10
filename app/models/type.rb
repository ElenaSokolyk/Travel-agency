class Type < ActiveRecord::Base
  has_many :tours
  has_many :directions, through: :tours

  validates :name, presence: true, length: { maximum: 50 }
end
