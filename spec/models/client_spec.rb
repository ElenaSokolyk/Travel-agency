require 'spec_helper'

describe Client do
  it { should have_many(:orders) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:category_id) }
  it { should belong_to(:category) }
  it { should validate_numericality_of(:category_id).only_integer }
  it { should_not allow_value("banana").for(:email) }
  it { should allow_value("banana@ukr.net").for(:email) }
  it { should_not allow_value("12").for(:password) }
  it { should allow_value("123456").for(:password) }
  it { should validate_uniqueness_of(:email) }
  it { should ensure_length_of(:password).is_at_least(6).is_at_most(20) }
  it { should ensure_length_of(:name).is_at_most(50) }
  it { should ensure_length_of(:surname).is_at_most(50) }
  it "client respond to orders" do
    @client = FactoryGirl.create(:client)
    @client.should respond_to :orders
  end
end
