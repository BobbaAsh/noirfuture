class PostsController < ApplicationController
    load_and_authorize_resource
      def index
        @posts = Post.all
      end

      def show
       @posts = Post.all
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
      end

      def delete

      end

      private


      def post_params
          params.require(:post).permit( :description, :name, :category ,:photo, photos: [])
      end
end
