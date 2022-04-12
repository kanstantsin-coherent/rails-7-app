module Api
  module V1
    class AuthenticationController < BaseController
      def create
        if params[:email] == "some@email.com" && params[:password] == "some_password"
          render json: { token: "1234" }, status: :ok
        else
          render json: { error: "wrong credentials" }, status: :unprocessable_entity
        end
      end
    end
  end
end
