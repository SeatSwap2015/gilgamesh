module API
  module V1
    class Games < Grape::API
      version 'v1'
      format :json

      resource :games do
        desc "Returns a list of upcoming games."
        get do
          [
            {
                "id": 54321,
                "round": "Playoffs",
                "poster_image": "http://path/to/image.png",
                "home_team": "San Francisco Giants",
                "visiting_team": "San Diego Padres",
                "start_game_time": "2016-04-11T16:44:17+00:00",
                "end_game_time": "2016-04-11T16:44:17+00:00",
                "stadium": "AT&T Park",
                "coodinates": {
                    "lat": 37.778714,
                    "lng": -122.389254
                },
                "fence_radius": 1200,
                "trivia": [
                    "The quick brown fox jumped over the lazy dog",
                    "The quick brown fox jumped over the lazy dog",
                    "The quick brown fox jumped over the lazy dog"
                ]
            }
          ]
        end
      end
    end
  end
end