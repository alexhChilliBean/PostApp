class CommentsController < ApplicationController

    def index
    end
    
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(post_params)
        if @comment.save
            redirect_to "posts#show"
        else
            flash[:error] = @comment.errors.full_messages
        end 
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :name, :content, :post_id)
    end

end
