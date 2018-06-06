class ApplicationController < ActionController::API

  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, "secret")
  end

  def decoded_token
    token = request.headers["Authorization"]
      begin
        JWT.decode(token, "secret", true, {algorithm: "HS256"})
      rescue JWT::DecodeError
        [{}]
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]["user_id"]
      @user = User.find(user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: {message: "Please log in"}, status: 401 unless logged_in?
  end


end
