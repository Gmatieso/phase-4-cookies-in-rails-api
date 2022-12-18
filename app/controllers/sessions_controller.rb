class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "i took A pill in IBiza"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
