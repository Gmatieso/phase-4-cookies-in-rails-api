class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "i took A pill in IBiza"
    cookies[:cookies_hello] ||= "i took A pill in IBiza"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
