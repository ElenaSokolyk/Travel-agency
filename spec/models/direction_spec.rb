require 'spec_helper'

describe Direction do
  it { should have_many(:types).through(:tours) }
  it { should ensure_length_of(:name).is_at_most(50) }
end
