class PostsController < ApplicationController
    
    def index
        posts = Post.all
        render json: PostSerializer.new(posts)
    end

    def create
        post = Post.new(post_params)

        if post.save
            render json: PostSerializer.new(post)
        else
            render json: {error: "Unable to add post."}
        end

    end

    def show
        post = Post.find(params[:id])
        render json: PostSerializer.new(post)
    end


    private

    def post_params
        params.require(:post).permit(:body)
    end

end
