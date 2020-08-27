class TestsPssfoursController < ApplicationController

    def new
      @pss4 = Pssfour.new
    end

    def create
      @pss4 = Pssfour.new(pssfour_params)
      if @pss4.save

        redirect_to tests_pssfours_show_path(@pss4)
      else
        redirect_to :action => "new"
      end
    end

    def show
      @post = Pssfour.find(params[:id])
      @sum = @post.question1+@post.question2+@post.question3+@post.question4
    end

    def index
      @pss4 = Pssfour.all.order("id DESC")
      @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
    end

    def destroy
      Pssfour.find(params[:id]).destroy
      redirect_to action: :index
    end



    private

    def pssfour_params
      params.require(:pssfour).permit(:question1, :question2, :question3, :question4)
    end


end
