require 'rails_helper'

RSpec.feature "product list page", type: :feature do
  describe "product list page" do
    before do
      visit products_path   # 名前付きルートを使用
    end

    # productページにOKASHI listと表示されていること
    it "should have the content 'OKASHI lsit'" do
      expect(page).to have_content "OKASHI list"
    end

     # productページに"WANDER WALL"と表示されていること
    it "should have the content 'WANDER WALL'" do
        expect(page).to have_content "WANDER WALL"
    end

    # productページにNext inovation always roll up in your heartと表示されていること
    it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end
  end
end