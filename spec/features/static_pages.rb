require 'rails_helper'

RSpec.feature "StaticBookPages", type: :feature do
  describe "Home page" do
    before do
      visit root_path   # 名前付きルートを使用
    end

    # HomeページにWelcome to the Wander Wallと表示されていること
    it "should have the content 'Welcome to the wander wall'" do
      expect(page).to have_content "Welcome to the Wander Wall"
    end

     # Homeページに"昔なつかし駄菓子屋さん。 あの頃の子供心を思い出したい。 そんな方のために作った完全会員制サイトです。 ぜひあの頃の子供心を。"と表示されていること
    it "should have the content '昔なつかし駄菓子屋さん。 あの頃の子供心を思い出したい。 そんな方のために作った完全会員制サイトです。 ぜひあの頃の子供心を。'" do
        expect(page).to have_content "昔なつかし駄菓子屋さん。 あの頃の子供心を思い出したい。 そんな方のために作った完全会員制サイトです。 ぜひあの頃の子供心を。"
    end
    
    # Homeページにwelcome backのボタンがある
    it 'ボタンのwelcome backがある' do
        expect(page).to have_button "welcome back"
    end

    # HomeページにNext inovation always roll up in your heartと表示されていること
    it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end
    
    # HomeページにWelcome to the Wander Wallと表示されていること
    it "should have the content 'WANDER WALL'" do
        expect(page).to have_content "WANDER WALL"
    end

    # Homeページにhomeと表示されていること
    it "should have the content 'home'" do
        expect(page).to have_content "home"
    end

     # Homeページにhomeと表示されていること
     it "should have the content 'Next inovation always roll up in your heart'" do
        expect(page).to have_content "Next inovation always roll up in your heart"
    end

    # タイトルが正しく表示されていること
    it "should have the right title" do
      expect(page).to have_title full_title('')
    end
  end
end