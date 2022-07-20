class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private
  
  def respond_with(_resource, _opts = {})
      if current_user
        render json: {
        message: 'You are logged in.',
        user: current_user
        }, status: :ok
      else
        render json: {
        message: 'Wrong email or password, try again.',
        }, status: :unauthorized
      end
  end
  
  def respond_to_on_destroy
    if current_user
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
    else
      render json: { message: 'You are logged out.' }, status: :ok
    end
  end
end