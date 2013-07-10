require 'spec_helper'

describe Order do
  it { should belong_to :client }
  it { should belong_to :tour }
  it { should belong_to :employee }
  it { should validate_numericality_of(:client_id).only_integer }
  it { should validate_numericality_of(:tour_id).only_integer }
  it { should validate_numericality_of(:employee_id).only_integer }
end
