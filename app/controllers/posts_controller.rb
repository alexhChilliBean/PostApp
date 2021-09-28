class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to root_path
        else
            @errors = @post.errors
        end 
    end

    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        flash[:notice] = "Post was deleted"
        redirect_to root_path
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :category, :author_name)
    end
    
end
