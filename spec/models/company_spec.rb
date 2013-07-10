require 'spec_helper'

describe Company do
  it { should have_many(:employees) }
  it { should ensure_length_of(:name).is_at_most(50) }
end
