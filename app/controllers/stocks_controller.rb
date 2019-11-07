class StocksController < ApplicationController
  def new
  end

  def show
    @stock = Stock.find(params[:id])
    @basket = Basket.new

    @current_stock_array = []                   #配列を生成　
    @stocks.current_stock.times do |quantity|   #@stockの現在の在庫数まで、ループを回す。
      if quantity < 30                          #quantityが30未満かどうか？
        @current_stock_array += quantity + 1
        #quantityは0からスタートしているので、1足した数を入れる必要がある。
      else
        break                                   #ループを抜ける
      end
    end
  end
end
