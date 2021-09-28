# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Testing book features', type: :feature do

  scenario 'valid input - title' do
    visit new_book_path
    fill_in 'book[title]', with: 'harry potter'
    fill_in 'book[author]', with: 'JK Rowling'
    fill_in 'book[price]', with: 10.00
    # 1997 June 26
    fill_in 'book[published_date]', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid input - author' do
    visit new_book_path
    fill_in 'book[title]', with: 'harry potter'
    fill_in 'book[author]', with: 'JK Rowling'
    fill_in 'book[price]', with: 10.00
    # 1997 June 26
    fill_in 'book[published_date]', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end

  scenario 'valid input - price' do
    visit new_book_path
    fill_in 'book[title]', with: 'harry potter'
    fill_in 'book[author]', with: 'JK Rowling'
    fill_in 'book[price]', with: 10.00
    # 1997 June 26
    fill_in 'book[published_date]', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10.00)
  end

  scenario 'valid input - date' do
    visit new_book_path
    fill_in 'book[title]', with: 'harry potter'
    fill_in 'book[author]', with: 'JK Rowling'
    fill_in 'book[price]', with: 10.00
    # 1997 June 26
    fill_in 'book[published_date]', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1997-06-26')
  end



end
