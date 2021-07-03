class CommentsController < ApplicationController

    def create
        comment = Comment.new(comment_params)

        if comment.save
            render json: CommentSerializer.new(comment)
        else
            render json: {error: "Unable to add comment."}
        end

    end


    private

    def comment_params
        params.require(:comment).permit(:body, :post_id)
    end

end
