class CommentsController < ApplicationController
    def create
        #댓글을 생성해주는 프로세스
        comment = Comment.new #새로 댓글을 만들게
        comment.content = params[:comment_content]
        comment.post_id =params[:post_id]
        comment.save
        
        redirect_to :back
    end
end
