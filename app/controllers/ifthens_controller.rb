class IfthensController < ApplicationController

    def new
        @ifthen = Ifthen.new
    end

    def show
    end

    def create
        @ifthen = Ifthen.new(ifthen_params)
        @ifthen.user_id = current_user.id
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
    end

    def update
        @ifthen = Ifthen.find(params[:id])
        if @ifthen.update(ifthen_params)
          redirect_to :action => "index"
        else
          redirect_to :action => "index"
        end
    end

    def destroy
        Ifthen.find(params[:id]).destroy
        redirect_to action: :index
    end

    private
    def ifthen_params
        params.require(:ifthen).permit(:ifthen, :todo, :memo)
    end

end
