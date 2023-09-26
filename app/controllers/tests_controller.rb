class TestsController < ApplicationController
  def new
    @test = Test.new
    @date = params[:testdate]
  end

  def create
    @test = Test.new(test_params)
    @test.save
    redirect_to tests_path
  end

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
    @nextday = Test.find_by(testdate: @test.testdate + 1)
  end

  private

  def test_params
    params.require(:test).permit(:title, :testdate)
  end
end
