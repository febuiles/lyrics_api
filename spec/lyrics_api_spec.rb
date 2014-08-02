require 'spec_helper'

describe "LyricsAPI" do

  def app
    @app ||= Sinatra::Application
  end

  describe "/lyrics" do
    it "returns 404 if no lyrics were found" do
      get '/lyrics', { artist: "State Faults", song: "Meteor" }
      expect(last_response).to be_not_found
    end

    it "returns 400 if the request is invalid" do
      get '/lyrics', { artist: "State Faults" }
      expect(last_response).to be_unprocessable
    end

    it "returns the song lyrics if it exists"
  end
end
