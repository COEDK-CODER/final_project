class UsersController < ApplicationController
  def new
    render "new"
  end

  def create
    new_user = User.new(first_name: params[:first_name],
                        last_name: params[:last_name],
                        role: params[:role],
                        email: params[:email],
                        password: params[:password])

    if new_user.save
      redirect_to "/"
    else
      flash[:error] = new_user.errors.full_messages.join(",")
      redirect_to new_user_path
    end
  end
end
