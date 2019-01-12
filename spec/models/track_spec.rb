require 'rails_helper'

RSpec.describe Track, type: :model do
  it {should belong_to(:record)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:number)}
  it {should validate_presence_of(:duration)}
end
