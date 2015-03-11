class EventCommentsController < CommentsController
  expose(:event) { Event.find(params[:event_id]) }

  def create
    comment.commentable = event
    save_commentable(comment)
  end
end
