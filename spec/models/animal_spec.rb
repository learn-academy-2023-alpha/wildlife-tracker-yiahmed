require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without a common name' do
    animaltest = Animal.create scientific_binomial: "test"
    expect(animaltest.errors[:common_name]).to_not be_empty
end
  it 'is not valid without a scientific binomial' do
  animaltest = Animal.create common_name: "test"
  expect(animaltest.errors[:scientific_binomial]).to_not be_empty
end
  it 'is not valid if common name and scientific binomial are the same' do
    animaltest = Animal.create common_name: "test", scientific_binomial: "test"
    expect(animaltest.errors).to_not be_empty
  end
  it 'is not valid if animals common name and scientific binomial are not unique' do
    animaltest = Animal.create common_name: "test", scientific_binomial: "test"
    animaltest2 = Animal.create common_name: "test", scientific_binomial: "test"
    expect(animaltest.errors).to_not be_empty
  end

end