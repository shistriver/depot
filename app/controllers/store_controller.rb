class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@count = increment_count
  end

  # 记录用户访问次数
  def increment_count
	session[:counter] ||= 0
	session[:counter] += 1
  end
end
