require 'spec_helper'

describe Picture do
  it { should belong_to(:imageable) }
  it { should validate_numericality_of(:imageable_id).only_integer }
end
