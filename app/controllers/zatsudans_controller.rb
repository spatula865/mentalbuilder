class ZatsudansController < ApplicationController

    def new
        @zatsudan = Zatsudan.new
    end

    def create
        @zatsudan = Zatsudan.new(zatsudan_params)
        if @zatsudan.save
        redirect_to controller: :zatsudans, action: :show, id: @zatsudan.id
        else
        redirect_to :action => "new"
        end
    end

    def show
        @post = Zatsudan.find(params[:id])
        @sumofhajimekata = @post.hajimekata1+@post.hajimekata2+@post.hajimekata3+@post.hajimekata4+@post.hajimekata5+@post.hajimekata6
        @scoreofhajimekata = ((@sumofhajimekata.to_f/18).to_f/0.01).round
        @sumofhirogekata = @post.hirogekata1 + @post.hirogekata2 + @post.hirogekata3 + @post.hirogekata4 + @post.hirogekata5 + @post.hirogekata6 + @post.hirogekata7 + @post.hirogekata8
        @scoreofhirogekata = ((@sumofhirogekata.to_f/24).to_f/0.01).round
        @sumofkikikata = @post.kikikata1+@post.kikikata2+@post.kikikata3+@post.kikikata4+@post.kikikata5+@post.kikikata6
        @scoreofkikikata = ((@sumofkikikata.to_f/18).to_f/0.01).round
        @sumofmoriagekata = @post.moriagekata1+@post.moriagekata2+@post.moriagekata3+@post.moriagekata4+@post.moriagekata5+@post.moriagekata6+@post.moriagekata6+@post.moriagekata7+@post.moriagekata8+@post.moriagekata9
        @scoreofmoriagekata = ((@sumofmoriagekata.to_f/27).to_f/0.01).round
        @totalscore = ((@scoreofhajimekata+@scoreofhirogekata+@scoreofkikikata+@scoreofmoriagekata).to_f/4).round
    end

    def index
        @zatsudan    = Zatsudan.all.order("id DESC")
    end

    def destroy
        Zatsudan.find(params[:id]).destroy
        redirect_to action: :index
    end

    def edit
        @memo = Zatsudan.find(params[:id])
    end

    private
    def zatsudan_params
      params.require(:zatsudan).permit(:hajimekata1, :hajimekata2, :hajimekata3, :hajimekata4, :hajimekata5, :hajimekata6, :hirogekata1, :hirogekata2, :hirogekata3, :hirogekata4, :hirogekata5, :hirogekata6, :hirogekata7, :hirogekata8, :kikikata1, :kikikata2, :kikikata3, :kikikata4, :kikikata5, :kikikata6, :moriagekata1, :moriagekata2, :moriagekata3, :moriagekata4, :moriagekata5, :moriagekata6, :moriagekata7, :moriagekata8, :moriagekata9)
    end

end