class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
      end
    
      def create
        gossip = Gossip.create(gossip_params)
        redirect_to gossips_path(gossip.id)
      end
    
      def show
        @user = User.find(params[:user_id])
        @gossip = Gossip.find(params[:id])
        @gossip_comments = Gossip.find(params[:id]).comments
      end
    
      def new
        @gossip = Gossip.new
      end
    
      def edit
        @gossip = Gossip.find(params[:id])
      end
    
      def update
        @gossip = Gossip.find(params[:id])
        @gossip.update(gossip_params)
        redirect_to gossips_path
      end
    
      def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to gossips_path
      end
    
      private
    
      def gossip_params
        params.require(:gossip).permit(:title, :content, :user_id)
    end
end
