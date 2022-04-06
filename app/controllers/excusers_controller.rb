require 'httparty'

class ExcusersController < ApplicationController
include HTTParty

    def index
        @excuses = HTTParty.get('https://excuser.herokuapp.com/v1/excuse')
        render json: @excuses.body
    end


    def show
        @excuse = HTTParty.get('https://excuser.herokuapp.com/v1/excuse/office')
        render json: @excuse.body
    end


    def ping
        render json: "success: true"
    end

end
