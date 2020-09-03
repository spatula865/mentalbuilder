class ZatsudansController < ApplicationController

    before_action :authenticate_user!, only: [:index]

    def new
        @zatsudan = Zatsudan.new
    end

    def create
        @zatsudan = Zatsudan.new(zatsudan_params)
        @zatsudan.user_id = current_user.id
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
        @sumofmoriagekata = @post.moriagekata1+@post.moriagekata2+@post.moriagekata3+@post.moriagekata4+@post.moriagekata5+@post.moriagekata6+@post.moriagekata7+@post.moriagekata8+@post.moriagekata9
        @scoreofmoriagekata = ((@sumofmoriagekata.to_f/27).to_f/0.01).round
        @totalscore = ((@scoreofhajimekata+@scoreofhirogekata+@scoreofkikikata+@scoreofmoriagekata).to_f/4).round

        gon.hajimekata = @scoreofhajimekata
        gon.hirogekata = @scoreofhirogekata
        gon.kikikata = @scoreofkikikata
        gon.moriagekata = @scoreofmoriagekata
        gon.total = @totalscore

    end

    def index
        @zatsudan = Zatsudan.where(user_id: current_user.id).all.order("id DESC")
        @base = Zatsudan.where(user_id: current_user.id).all
        @time = []
        @hajimekata = []
        @hirogekata = []
        @kikikata = []
        @moriagekata = []
        @total =[]
        @base.each do |t|
            @time.push(t.created_at.strftime('%Y-%m-%d'))
            @hajimekata.push((((t.hajimekata1+t.hajimekata2+t.hajimekata3+t.hajimekata4+t.hajimekata5+t.hajimekata6).to_f/18).to_f/0.01).round)
            @hirogekata.push((((t.hirogekata1 + t.hirogekata2 + t.hirogekata3 + t.hirogekata4 + t.hirogekata5 + t.hirogekata6 + t.hirogekata7 + t.hirogekata8).to_f/24).to_f/0.01).round)
            @kikikata.push((((t.kikikata1+t.kikikata2+t.kikikata3+t.kikikata4+t.kikikata5+t.kikikata6).to_f/18).to_f/0.01).round)
            @moriagekata.push((((t.moriagekata1+t.moriagekata2+t.moriagekata3+t.moriagekata4+t.moriagekata5+t.moriagekata6+t.moriagekata7+t.moriagekata8+t.moriagekata9).to_f/27).to_f/0.01).round)
            @total.push((((((t.hajimekata1+t.hajimekata2+t.hajimekata3+t.hajimekata4+t.hajimekata5+t.hajimekata6).to_f/18).to_f/0.01).round+(((t.hirogekata1 + t.hirogekata2 + t.hirogekata3 + t.hirogekata4 + t.hirogekata5 + t.hirogekata6 + t.hirogekata7 + t.hirogekata8).to_f/24).to_f/0.01).round+(((t.kikikata1+t.kikikata2+t.kikikata3+t.kikikata4+t.kikikata5+t.kikikata6).to_f/18).to_f/0.01).round+(((t.moriagekata1+t.moriagekata2+t.moriagekata3+t.moriagekata4+t.moriagekata5+t.moriagekata6+t.moriagekata7+t.moriagekata8+t.moriagekata9).to_f/27).to_f/0.01).round).to_f/4).round)
        end

        gon.time = @time
        gon.hajimekata = @hajimekata
        gon.hirogekata = @hirogekata
        gon.kikikata = @kikikata
        gon.moriagekata = @moriagekata
        gon.total = @total
    end

    def destroy
        Zatsudan.find(params[:id]).destroy
        redirect_to action: :index
    end

    def edit
        @memo = Zatsudan.find(params[:id])
    end
  
    def update
        @memo = Zatsudan.find(params[:id])
        if @memo.update(zatsudan_params)
          redirect_to :action => "index"
        else
          redirect_to :action => "index"
        end
    end

    private
    def zatsudan_params
      params.require(:zatsudan).permit(:hajimekata1, :hajimekata2, :hajimekata3, :hajimekata4, :hajimekata5, :hajimekata6, :hirogekata1, :hirogekata2, :hirogekata3, :hirogekata4, :hirogekata5, :hirogekata6, :hirogekata7, :hirogekata8, :kikikata1, :kikikata2, :kikikata3, :kikikata4, :kikikata5, :kikikata6, :moriagekata1, :moriagekata2, :moriagekata3, :moriagekata4, :moriagekata5, :moriagekata6, :moriagekata7, :moriagekata8, :moriagekata9, :memo, :sumofhajimekata, :sumofhirogekata, :sumofkikikata, :sumofmoriagekata)
    end

end