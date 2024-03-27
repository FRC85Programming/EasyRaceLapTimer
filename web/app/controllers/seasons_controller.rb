class SeasonsController < ApplicationController
    before_action :filter_needs_login

    def show
        name = params[:name]
        @season = Season.where(name: name).first
    end
end
