class PostsController < ApplicationController
    before_action :authenticate_user!, :only => [:create, :new, :update, :delete]
    load_and_authorize_resource
    add_breadcrumb "Work", :posts_path
      def index
        @posts = Post.all
      end

      def show
        @posts = Post.friendly.find(params[:id])
        add_breadcrumb @posts, post_path(@posts)
      end
      def new
        @post = Post.new
      end

      def create
        @post = Post.new(post_params)
         if @post.save
       redirect_to root_path
        end
      end


      def edit
        @post = Post.find(params[:id])
      end

      def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to @post
      end

      def destroy
        @post = Post.find(params[:id])
        if @post.destroy
       redirect_to root_path
        end
      end

      private


      def post_params
          params.require(:post).permit(:id, :link ,:description, :name, :category ,:photo, photos: [])
      end
end
