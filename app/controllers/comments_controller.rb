class CommentsController < ApplicationController
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
    def post_params
        params.require(:comment).permit(:user, :content)
    end

end
