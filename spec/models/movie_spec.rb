require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { Movie.new(title: "Harry Potter and the Sorcerer's Stone", director: 'Chris Columbus', rate 10) }

  before { subject.save }

  it 'title should be present' do
      subject.title = nil
      expect(subject).to_not be_valid
  end

  it 'director should be present' do
    subject.director = nil
    expect(subject).to_not be_valid
  end

  it 'rate should be present' do
    subject.rate = nil
    expect(subject).to_not be_valid
  end

  it 'title should not be too short' do
    subject.title = 'a'
    expect(subject).to_not be_valid
  end

  it 'title should not be too long' do
    subject.title = 'a' * 30
    expect(subject).to_not be_valid
  end

  it 'director name should not be too short' do
    subject.director = 'a'
    expect(subject).to_not be_valid
  end

  it 'director name should not be too long' do
    subject.director = 'a' * 25
    expect(subject).to_not be_valid
  end

  it 'rate should allow valid values' do
    subject.rate = 11
    expect(subject).to_not be_valid
  end
end