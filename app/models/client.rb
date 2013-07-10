class Client < ActiveRecord::Base
  belongs_to :category
  has_many :orders

  validates :email, :password, presence: true
  validates :email, format: { with: /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\z/, :message => "Only emails allowed" },
                    uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :password, confirmation: :true
  validates :category_id, presence: true,
                          numericality: { only_integer: true, greater_than: 0 } 
  validates :name, :surname, length: { maximum: 50 }
  
end

