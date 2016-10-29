class GuessesController < ApplicationController

  def clearit

    Guess.destroy_all

    @list = Guess.all

    render("guesses/index.html.erb")
  end

  def index


    g = Guess.new
    g.first_number = params["first_num"]
    g.second_number = params["second_num"]
    g.third_number = params["third_num"]
    g.save


    # if @first_number < @second_number && @second_number < @third_number
    #   @result = "Yes!"
    # else
    #   @result = "No."
    # end

    @list = Guess.all


    render("guesses/index.html.erb")
  end

  def answer
    # params = {"q"=>"Increasing numbers"}

    @user_answer = params["response"]

    render("guesses/answer.html.erb")
  end

end
