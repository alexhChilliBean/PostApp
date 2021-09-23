class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to root_path
        else
            render 'end'
        end 
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :category, :author_name)
    end
    
end
