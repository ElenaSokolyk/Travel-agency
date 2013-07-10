require 'spec_helper'

describe Action do
  it { should belong_to(:category) }
  it { should validate_numericality_of(:category_id).only_integer }
  it { should ensure_length_of(:name).is_at_most(50) }
end
