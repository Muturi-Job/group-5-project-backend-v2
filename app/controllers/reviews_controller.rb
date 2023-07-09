class ReviewsController < ApplicationController
    def index
    # if session.include? :user_id
        reviews = Review.all
        render json: reviews, status: :ok
    # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized  
    # end
    end

    def update
    # if session.include? :user_id
        review = find_review
        if review
            review.update!(review_params)
            render json: review
        else
            render json: {error: "Review not found"}, status: :not_found
        end
     # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized  
    # end
    end

    def create
        review = Review.create!(review_params)
        if review.valid?
            render json: review, status: :created
        else
            render json: {error: 'Invalid review'}, status: :unprocessable_entity
        end

    end

    private

    def find_review
        Review.find_by(id: params[:id])
    end
    
    def review_params
        params.require(:review).permit(:user_id, :rating, :description, :recipe_id)
    end
end
