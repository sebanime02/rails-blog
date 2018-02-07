class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    logger.debug "Articles #{params[:comment]}"
    logger.debug "Comments: #{@article.attributes.inspect}"
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article) #Remember index action is waiting @articles object
  end
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
