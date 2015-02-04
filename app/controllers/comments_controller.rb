class CommentsController < ApplicationController
  expose(:comment, attributes: :comment_attributes)
  expose(:comments)

  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    if comment.save
      flash[:success] = "V'oila!"
      redirect_to comments_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :new
    end
  end

  def update
    if comment.update(comment_attributes)
      flash[:success] = "V'oila!"
      redirect_to comments_path
    else
      flash[:error] = 'Nie poszło nam...'
      render :edit
    end
  end

  def destroy
    if comment.destroy
      flash[:success] = "V'oila!"
      redirect_to comments_path
    else
      flash[:success] = "Nie poszło nam.."
      redirect_to comments_path
    end
  end

  private

  def comment_attributes
    params.require(:comment).permit(:content, :event_id)
  end
end
