require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without a latitude' do
    sightingtest = Sighting.create longitude: 1.0, date: "2023-03-31"
    expect(sightingtest.errors[:latitude]).to_not be_empty
end
it 'is not valid without a longitude' do
  sightingtest = Sighting.create latitude: 1.0, date: "2023-03-31"
  expect(sightingtest.errors[:longitude]).to_not be_empty
end
  it 'is not valid without a latitude' do
    sightingtest = Sighting.create longitude: 1.0, latitude: 1.0
    expect(sightingtest.errors[:date]).to_not be_empty
end
end
