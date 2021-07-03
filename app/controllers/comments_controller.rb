class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.new(comment_params)

        if comment.save
            render json: CommentSerializer.new(comment)
        else
            render json: {error: "Unable to add comment."}
        end

    end

    def show
        comment = Comment.find(params[:id])
        render json: CommentSerializer.new(comment)
    end


    private

    def comment_params
        params.require(:comment).permit(:body, :post_id)
    end

end
