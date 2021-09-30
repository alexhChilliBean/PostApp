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
        if @post.destroy
            flash[:notice] ="Post deleted"
            redirect_to root_path
        else
            flash[:notice]="Failed to delete post"
            render
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :category, :author_name)
    end
    
end
