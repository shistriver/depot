class SayController < ApplicationController
  def hello
  	@time = Time.now
  end

  def goodbye
  	#列出当前目录中的所有文件
  	@files = Dir.glob('*')
  end
end
