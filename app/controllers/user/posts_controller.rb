class User::PostsController < ApplicationController
  def index
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:body, :hash_body, post_images: [])
  end
end
