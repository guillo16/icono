class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :team, :nutrition, :doctor, :surgery, :turnos, :red, :saco]

  def home
    @articles = Article.all
  end

  def about
  end

  def team
  end

  def nutrition
  end

  def doctor
  end

  def surgery
  end

  def turnos
  end

  def red
  end

  def saco
  end
end
