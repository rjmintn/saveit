class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
  before_action :set_topic
  def show

  end

  def new
    @bookmark = Bookmark.new
    @topic = Topic.find(params[:topic_id])
  end

  def edit
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @bookmark = @topic.bookmarks.build(bookmark_params)
    @bookmark.user = current_user
    if @bookmark.save
      flash[:notice] = "Bookmark was saved."
      redirect_to [@topic]
    else
      flash.now[:alert] = "There was an error saving the bookmark. Please try again."
      render :new
    end
  end

  def update

  end

  def destroy
    if @bookmark.destroy
  flash[:notice] = "Bookmark was deleted successfully."
  redirect_to @topic
else
  flash.now[:alert] = "There was an error deleting the bookmark."
  render :show
end
  end

  private

def set_topic
  @topic = Topic.find(params[:topic_id])

end
  def set_bookmark

    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url, :description, :topic_id, :user_id)
  end
end
