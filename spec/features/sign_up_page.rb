require 'rails_helper'

RSpec.feature "Sign up page", type: :feature do
  describe "sign up page" do
    before do
      visit signup_path   # 名前付きルートを使用
    end

    # sign upページにWelcome to the Wander Wallと表示されていること
    it "should have the content 'FIRST GATE'" do
      expect(page).to have_content "FIRST GATE"
    end

     # sign upページに"君も世界の仲間入りだ。"と表示されていること
    it "should have the content '君も世界の仲間入りだ。'" do
        expect(page).to have_content "君も世界の仲間入りだ。"
    end

    # sign upページにNext inovation always roll up in your heartと表示されていること
    it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end
    
    # sign upページにWelcome to the Wander Wallと表示されていること
    it "should have the content 'WANDER WALL'" do
        expect(page).to have_content "WANDER WALL"
    end

    it 'ボタンのOpen your Wander Wallがある' do
        expect(page).to have_button "Open your Wander Wall"
    end
      feature 'users#new,createした時の挙動' do
        before do
          fill_in 'Name',         with: 'hoge'
          fill_in 'Email',        with: 'hogehoge@hoge'
          fill_in 'Adress',       with: 'hogehoge'
          fill_in 'Password',     with: 'hogehogehogehoge'
          fill_in 'Confirmation', with: 'hogehogehogehoge'
          click_button 'Open your Wander Wall'
        end
    
        it "成功するとメッセージがでる=>'Welcome'" do
          expect(page).to have_content "Welcome"
        end
      end
    # タイトルが正しく表示されていること
    it "should have the right title" do
      expect(page).to have_title full_title('')
    end
  end
end