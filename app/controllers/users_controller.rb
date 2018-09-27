class UsersController < ApplicationController

  def index
    users = User.all.includes(:articles)
    render json: users, root: :data, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, include: "", fields: [:id, :name, :age, :gender]
    else
      render json: user, status: :unprocessable_entity, adapter: :json_api,
             serializer: ActiveModel::Serializer::ErrorSerializer
      # render json: {
      # messages: user.errors.full_messages,
      # }, status: :unprocessable_entity
    end
  end



  private

    def user_params
      params.require(:user).permit(:name, :age, :email, :phone, :gender, :address)
    end
end
