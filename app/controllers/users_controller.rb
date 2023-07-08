class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end
  
    def show
        if session.include? :user_id
            user = User.find(session[:user_id])
            render json: user, status: :created
        else
            render json: {error: "Unauthorized user"}, status: :unauthorized
        end
    end

    def index
    # if session.include? :user_id
        users = User.all
        render json: users, status: :ok
    # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized  
    # end
    end

    def update
        # if session.include? :user_id
        user = find_user
        if user
          if user.update(user_params)
            render json: user
          else
            render json: { error: "Unable to update user" }, status: :unprocessable_entity
          end
        else
          render json: { error: "User not found" }, status: :not_found
        end
        # else
        #     render json: {errors: ["You are not logged in"]}, status: :unauthorized
        # end
      end
      
  
    private
    
    def user_params
        params.permit(:username, :password, :password_confirmation, :contact, :image, :bio, :location)
    end

    def find_user
        User.find_by(id: session[:user_id])
    end
    
end
