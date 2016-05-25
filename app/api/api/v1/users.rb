module API
  module V1
    class Users < Grape::API
      version 'v1'
      format :json
      
      resource :users do

        desc "Creates a user given an email and password" do
        failure [[400, 'Bad request - email/password invalid'],
                 [409, 'Conflict - user with email already exists']]
        end

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

        desc "assign a payment token and customer id to a user"
        params do
          requires :card_id, type: String, desc: "Id token for the payment method"
          requires :customer_id, type: String, desc: "Customer identifier for the external payment service"
        end

        put '/payment_methods' do
          authenticate!
          current_user.payments.create({external_payment_id: params[:card_id], external_customer_id: params[:customer_id]}) if current_user
          if current_user.valid?
            status 200
          else
            status 400
          end
        end

      end  
    end
  end
end