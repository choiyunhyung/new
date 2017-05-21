class CommentsController < ApplicationController
    def new
    end
    
    def create
        #댓글을 생성해주는 프로세스
        comment = Comment.new #새로 댓글을 만들게
        comment.content = params[:content]
        comment.post_id =params[:post_id]
        comment.save
        redirect_to :back
    end
    
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        redirect_to :back
    
    end

end
