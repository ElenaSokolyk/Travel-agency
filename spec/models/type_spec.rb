require 'spec_helper'

describe Type do
  it { should have_many(:directions).through(:tours) }
  it { should ensure_length_of(:name).is_at_most(50) }
end
