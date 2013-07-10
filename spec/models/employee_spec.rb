require 'spec_helper'

describe Employee do
  it { should have_many(:pictures) }
  it { should have_many(:orders) }
  it { should belong_to(:company) }
  it { should validate_numericality_of(:company_id).only_integer }
  it { should ensure_length_of(:name).is_at_most(50) }
  it { should ensure_length_of(:surname).is_at_most(50) }
end
