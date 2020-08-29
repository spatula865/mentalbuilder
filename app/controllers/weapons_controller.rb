class WeaponsController < ApplicationController

    def index
        @weapons = Weapon.all
    end
    
    def new
        @weapon = Weapon.new
    end
    
    def create
        @weapon = Weapon.new(weapon_params)
        @weapon.user_id = current_user.id
        if @weapon.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def edit
        @memo = Weapon.find(params[:id])
    end
    
    def update
        @memo = Weapon.find(params[:id])
        if @memo.update(weapon_params)
            redirect_to :action => "index"
        else
            redirect_to :action => "index"
        end
    end

    def destroy
        Weapon.find(params[:id]).destroy
        redirect_to action: :index
    end

    def index_indiv
        @weapons = Weapon.all
    end

    def show
    end


    private

        def weapon_params
            params.require(:weapon).permit(:body)
        end

end
