module API
  module V1
    class Root < Grape::API
      mount API::V1::Games
      mount API::V1::Auth
      mount API::V1::Users 
    end
  end
end