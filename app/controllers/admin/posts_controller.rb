module Admin
  class PostsController < ApplicationController
    before_action :require_authentication, :require_admin
    before_action :set_post, only: [:edit, :update, :destroy]

    def new
      @post = Post.new
    end

    def create
      if @post = Post.create(post_params)
        redirect_to @post, notice: "Post was succesfully created"
      else
        render :new
      end
    end

    def edit  
    end

    def update
      if @post.update(post_params)
        redirect_to @post, notice: "Post was succesfully updated"
      else
        render :new
      end
    end

    def destroy
      @post.destroy
      redirect_to root_path, notice: "Post was successfully deleted"
    end

  private

    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def require_admin
      if !Current.session.user.admin?
        redirect_to root_path, alert: "You are not authorized to view this page"
      end
    end

    def post_params
      params.expect(post: [:title, :body, :banner_image])
    end
  end
end