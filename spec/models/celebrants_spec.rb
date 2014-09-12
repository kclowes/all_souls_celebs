require 'rails_helper'

describe Celebrant do
  it 'should be valid with a name' do
    expect(Celebrant.create!(name: 'Celebrant')).to be_valid
  end

  it 'should be invalid without a name' do
    expect(Celebrant.create(name: '')).to_not be_valid
  end
end