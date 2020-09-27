class ProgramsController < ApplicationController
  before_action :authenticate_user!, only: %i[index show]
  before_action :set_programs, only: %i[show edit update destroy]

  def index
    @programs = Program.order(created_at: :desc).page params[:page]
  end

  def show
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      redirect_to program_path(@program)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @program.update(program_params)
    redirect_to program_path(@program)
  end

  def destroy
    @program.destroy
    redirect_to programs_path
  end

  private

  def set_programs
    @program = Program.find(params[:id])
  end

  def program_params
    params.require(:program).permit(:title, :subtitle, :content, :photo)
  end
end
