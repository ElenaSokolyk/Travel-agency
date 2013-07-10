class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :tour
  belongs_to :employee

  validates :client_id, :tour_id, :employee_id, presence: true,
                                                numericality: { only_integer: true, greater_than: 0 } 
                                             
end
