# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 10.00, published_date: 1999-12-31)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  #name = string
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  # author = string
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  # price = decimal
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  # published_date = date (date is a datatype, like in sql)
  it 'is not valid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end


end
