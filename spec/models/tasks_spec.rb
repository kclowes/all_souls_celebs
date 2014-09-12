require 'rails_helper'

describe Task do
  it 'should be valid with a name' do
    expect(Task.create(name: 'New Task')).to be_valid
  end

  it 'should be invalid without a name' do
    expect(Task.create(name: '')).to_not be_valid
  end
end