module API
  module V1
    class Users < Grape::API
      version 'v1'
      format :json
      
      resource :users do

        desc "Creates a user given an email and password"
        params do
          requires :email, type: String, desc: "Username or email address"
          requires :password, type: String, desc: "Password"
        end
        post "/" do

          user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password])

          if user.valid? && user.valid_password?(params[:password])
            status 200
          else
            status 400
          end
        end

      end  
    end
  end
end