class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  def render_json(json)
    callback = params[:callback]
    response = begin
      if callback
        "#{callback}(#{json});"
      else
        json
      end
    end
    render({:content_type => :js, :text => response})
  end
end
