class CommentsController < ApplicationController
    before_action :find_post

    def index
    end
    
    def new
        
        @comment = Comment.new
    end

    def create
        postID = params[:post_id]
        @comment = Comment.new(comment_params)
        @comment.post_id = postID
        if @comment.save
            flash[:success] = "Comment Successfully Added"
            return redirect_to post_path("#{postID}")
        else
            flash[:error] = @comment.errors.full_messages
            render 'new'
        end 
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :name, :content, :post_id)
    end

    private
    def find_post
        @post = Post.find(params[:post_id])
    end
end
