class HomesController < ApplicationController
  def index
    @posts = Post.all.by_newest
    @post = current_user.posts.new
  end
end
