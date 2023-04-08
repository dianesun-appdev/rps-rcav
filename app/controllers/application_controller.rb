class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/rps_game.html.erb" })
  end

  def play_scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render({ :template => "game_templates/rps_game.html.erb" })
  end

  def play_paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/rps_game.html.erb" })
  end

  def homepage
    render({ :template => "game_templates/homepage.html.erb" })
  end
end
