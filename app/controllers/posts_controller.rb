class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to root_path
        else
            flash[:error] = @post.errors.full_messages
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
            flash[:error]="Failed to delete post"
            render
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        return render 'edit', error:["Post does not exist"] unless @post

        if @post.update(post_params)
            flash[:notice] = "Post Updated"
            redirect_to post_path(@post)
        else
            flash[:error] = @post.error.full_messages
            render 'edit'
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :category, :author_name)
    end
    
end
