class TestsPssfoursController < ApplicationController

  before_action :authenticate_user!, only: [:index]

    def new
      @pss4 = Pssfour.new
    end

    def create
      @pss4 = Pssfour.new(pssfour_params)
      @pss4.user_id = current_user.id
      if @pss4.save
        redirect_to tests_pssfours_show_path(@pss4)
      else
        redirect_to :action => "new"
      end
    end

    def show
      @post = Pssfour.find(params[:id])
      @sum = (((@post.question1+@post.question2+@post.question3+@post.question4).to_f/16).to_f/0.01).round
    end

    def index
      @pss4 = Pssfour.all.order("id DESC")

      @base = Pssfour.where(user_id: current_user.id).all
      @arrayoftime = []
      @arrayofsum = []
      @array = []
      @base.each do |s|
        @arrayoftime.push(s.created_at.strftime('%Y-%m-%d'))
        @arrayofsum.push((((s.question1+s.question2+s.question3+s.question4).to_f/16).to_f/0.01).round)
        @array.push([s.created_at.strftime('%Y-%m-%d'), (((s.question1+s.question2+s.question3+s.question4).to_f/16).to_f/0.01).round])
      end
      gon.time = @arrayoftime
      gon.sum = @arrayofsum

    end

    def destroy
      Pssfour.find(params[:id]).destroy
      redirect_to action: :index
    end

    def edit
      @memo = Pssfour.find(params[:id])
    end

    def update
      @memo = Pssfour.find(params[:id])
      if @memo.update(pssfour_params)
        redirect_to :action => "index"
      else
        redirect_to :action => "index"
      end
    end





    private

    def pssfour_params
      params.require(:pssfour).permit(:question1, :question2, :question3, :question4, :memo)
    end


end
