class Cart < ApplicationRecord
	# 指令 dependent: :destroy 部分表明， 商品是否存在取决于对应的购物车是否存在
	# 如果我们在数据库中删除一个购物车，那么Rails应该删除与此购物车关联的商品
	has_many :line_items, dependent: :destroy
end
