class HomesController < ApplicationController
  def index
    @posts = Post.all.by_newest
    if user_signed_in?
      @post = current_user.posts.new
    end
  end
end
