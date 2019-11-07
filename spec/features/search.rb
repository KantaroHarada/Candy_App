require 'rails_helper'

RSpec.feature "product list page", type: :feature do
  describe "product list page" do
    before do
      visit product_search_path   # 名前付きルートを使用
    end

    # product searchページにOKASHI listと表示されていること
    it "should have the content 'OKASHI SAGASHI'" do
      expect(page).to have_content "OKASHI SAGASHI"
    end

     # product searchページに"WANDER WALL"と表示されていること
    it "should have the content 'WANDER WALL'" do
        expect(page).to have_content "WANDER WALL"
    end

    # product searchページにNext inovation always roll up in your heartと表示されていること
    it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end
    
    # product searchページに'SAGASU'のボタンがあること'
    it 'ボタンのSAGASUがある' do
        expect(page).to have_button "SAGASU"
    end
  end
end