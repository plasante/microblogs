class StaticPagesController < ApplicationController
  def home
    if current_user.nil?
      @micropost = []
      @feed_items =[]
    else
      @micropost = current_user.microposts.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end
  
  def contact
  end
end
