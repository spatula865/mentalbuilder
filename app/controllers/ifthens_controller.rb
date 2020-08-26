class IfthensController < ApplicationController

    before_action :authenticate_user!

    def new
        @ifthen = Ifthen.new
    end

    def show
    end

    def create
        @ifthen = Ifthen.new(ifthen_params)
        if @ifthen.save
          redirect_to controller: :ifthens, action: :index
        else
          redirect_to :action => "new"
        end
    end

    def index
        @ifthen = Ifthen.all.order("id DESC")
    end

    def edit
        @ifthen = Ifthen.find(params[:id])
        @todo = Ifthen.find(params[:id])
    end

    private
    def ifthen_params
        params.require(:ifthen).permit(:ifthen, :todo)
    end

end
