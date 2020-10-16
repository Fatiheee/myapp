class WelcomeController < ApplicationController
  def index
  	if current_user
  		redirect_to posts_url
  	else
  		@posts = Post.all
        time = Time.now
        @date = time.strftime("%Y-%m-%d")
        @time = time.strftime("%H:%M:%S")
  	end
  end
end
