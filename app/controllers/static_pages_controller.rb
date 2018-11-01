class StaticPagesController < ApplicationController
    def index
    end
    def show
      @user = User.create
    end
    def home
    end
end
