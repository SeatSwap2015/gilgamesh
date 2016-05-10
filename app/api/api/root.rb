module API
  class Root < Grape::API
    prefix 'api'
    # mount API::V2::Root (next version)

    helpers do  
      def authenticate!
        error!('Unauthorized. Invalid or expired token.', 401) unless current_user
      end

      def current_user
        # find token. Check if valid.
        token = ApiKey.where(access_token: params[:token]).first
        if token && !token.expired?
          @current_user = User.find(token.user_id)
        else
          false
        end
      end
    end

    mount API::V1::Root
    
  end
end