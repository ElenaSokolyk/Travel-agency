require 'spec_helper'

describe Tour do
  it { should belong_to :direction }
  it { should belong_to :type }
  it { should have_one :order }
  it { should have_many :pictures }
  it { should validate_numericality_of(:price) }
  it { should validate_numericality_of(:type_id).only_integer }
  it { should validate_numericality_of(:direction_id).only_integer }
end

