module Api
  module V1    
    class PostsController < ApplicationController
      before_action :set_post, only: [:show, :edit, :update, :destroy]
      respond_to :json
    
      # GET /posts
      # GET /posts.json
      def index
       respond_with Post.all
      end
    
      # GET /posts/1
      # GET /posts/1.json
      def show
          respond_with @post
      end
    
      # GET /posts/new
      def new
        @post = Post.new
      end
    
      # GET /posts/1/edit
      def edit
      end
    
      # POST /posts
      # POST /posts.json
      def create
        respond_with Post.create(params[:posts])
      end
    
      # PATCH/PUT /posts/1
      # PATCH/PUT /posts/1.json
      def update
        respond_with Post.update(params[:id], params[:posts])
      end
    
      # DELETE /posts/1
      # DELETE /posts/1.json
      def destroy
        respond_with Post.destroy(params[:id])
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
          @post = Post.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def post_params
          params.require(:post).permit(:title, :body)
        end
    end
  end
end
