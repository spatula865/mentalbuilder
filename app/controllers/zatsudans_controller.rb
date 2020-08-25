class ZatsudansController < ApplicationController

    def new
        @zatsudan = Zatsudan.new
    end

    def create
        @zatsudan = Zatsudan.new(zatsudan_params)
        if @zatsudan.save
        redirect_to zatsudans_show_path(@zatsudan)
        else
        redirect_to :action => "new"
        end
    end

    def show
        @post = Zatsudan.find(params[:id])
        @sumofhajimekata = @post.hajimekata1+@post.hajimekata2+@post.hajimekata3+@post.hajimekata4+@post.hajimekata5+@post.hajimekata6
    end

    def index
        @zatsudan    = Zatsudan.all.order("id DESC")
    end

    private
    def zatsudan_params
      params.require(:zatsudan).permit(:hajimekata1, :hajikemata2, :hajimekata3, :hajimekata4, :hajimekata5, :hajimekata6)
    end

end