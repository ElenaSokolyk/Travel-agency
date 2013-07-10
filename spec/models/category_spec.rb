require 'spec_helper'

describe Category do
  it { should have_many(:actions) }
  it { should have_many(:clients) }
  #it { should ensure_length_of(:name).is_at_most(50) }
end
