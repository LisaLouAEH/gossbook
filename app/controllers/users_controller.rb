class UsersController < ApplicationController
  
  def index
    @users = User.all
    puts "coucou j'essaye de me connecter a ma page index utilisateur #{@users}"
  end
  def new
    @user = User.new
    p "Je propooooooose de creer un nouvel utilisateur #{@user}"
  end
  def create
    @user = User.create(password: params[:user][:password], name: params[:user][:name], email: params[:user][:email])
    p "Je suis créé je vais me ranger tout seule dans la DB !!!! #{@user.name}"
  end
  def show
    @user = User.find(params[:id])
  end
=begin
  
    def edit
      @user = User.find(params[:id])
    end
    def update
      @user = User.find(params[:id])
      @user.update(user_params)
    end
    def destroy
    end
=end
end
