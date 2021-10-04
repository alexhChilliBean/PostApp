class CommentsController < ApplicationController

    def index
    end
    
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            flash[:success] = "Comment Successfully Added"
            return redirect_to post_path("#{comment_params[:post_id]}")
        else
            flash[:error] = @comment.errors.full_messages
            render 'new'
        end 
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :name, :content, :post_id)
    end

end
