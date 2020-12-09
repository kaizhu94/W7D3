require 'rails_helper'

RSpec.describe Goal, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:details) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:id) }
end
