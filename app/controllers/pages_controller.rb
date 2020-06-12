class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :team, :nutrition, :doctor, :surgery]

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
end
