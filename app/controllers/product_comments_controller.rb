class ProductCommentsController < CommentsController
  expose(:product) { Product.find(params[:product_id]) }

  def create
    comment.commentable = product
    save_commentable(comment)
  end
end
