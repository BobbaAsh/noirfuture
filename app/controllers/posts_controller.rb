class PostsController < ApplicationController
    load_and_authorize_resource
    skip_authorization_check only: :show
    add_breadcrumb "Work", :posts_path
      def index
        @posts = Post.all
      end

      def show
        @posts = Post.friendly.find(params[:id])
        add_breadcrumb @post, post_path(@post)
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
      end

      def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to @post
      end

      def delete
        @post = Post.find(params[:id])
        @post.destroy
      end

      private


      def post_params
          params.require(:post).permit( :description, :name, :category ,:photo, photos: [])
      end
end
