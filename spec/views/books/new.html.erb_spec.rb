require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      title: "MyString",
      author: "MyString",
      price: 00.00,
      published_date: '0000-00-00'
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"
      assert_select "input[author=?]", "book[author]"
      assert_select "input[price=?]", "book[price]"
      assert_select "input[published_date=?]", "book[published_date]"
    end
  end
end
