class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    Comment.create(comment_params.merge:(article: article))
  end

  def –skip
  end

  def routes
  end

  private

  def comment_params
    params.require(:comment).permit[:comment, :name]
  end
end
