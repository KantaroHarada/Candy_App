require 'rails_helper'

RSpec.feature "log in page", type: :feature do
  describe "log in page" do
    before do
      visit login_path   # 名前付きルートを使用
    end

    # log inページにWelcome Backと表示されていること
    it "should have the content 'Welcome Back'" do
      expect(page).to have_content "Welcome Back"
    end

     # log inページに"First time? FIRST GATE"と表示されていること
    it "should have the content 'First time? FIRST GATE'" do
        expect(page).to have_content "First time? FIRST GATE"
    end

    # log inページにNext inovation always roll up in your heartと表示されていること
    it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end
    
    # log inページにWANDER WALLと表示されていること
    it "should have the content 'WANDER WALL'" do
        expect(page).to have_content "WANDER WALL"
    end
    
    # log inボタンがある
    it 'ボタンのLog inがある' do
        expect(page).to have_button "OLog in"
    end
    
    # 挙動の確認（成功）
    feature 'session#new,createした時の挙動' do
        before do
          fill_in 'Email',        with: 'hogehoge@hoge'
          fill_in 'Password',     with: 'hogehogehogehoge'
          click_button 'Log in'
        end
    
        it "成功するとメッセージがでる=>'Welcome'" do
          expect(page).to have_content "Welcome"
        end
    end
　　
    # 挙動の確認（失敗）
    feature 'session#new,createが失敗した時の挙動' do
        before do
          fill_in 'Email',        with: 'hogehoge@hoge'
          fill_in 'Password',     with: 'hogehogehogehoge'
          click_button 'Log in'
        end
    
        it "失敗するとメッセージがでる=>'Invalid email/password combination'" do
          expect(page).to have_content "Invalid email/password combination"
        end

    end

    # タイトルが正しく表示されていること
    it "should have the right title" do
      expect(page).to have_title full_title('')
    end
  end
end