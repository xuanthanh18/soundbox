class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    else
      @audiopost = Audiopost.new
    end
  end

  def help
  end

  def contact
  end

  def about
  end

  def sendgrid
    render text: "SendGrid"
  end

end
