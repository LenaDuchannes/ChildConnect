class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    @case.user = current_user
    if @case.save
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @case.update(case_params)
      redirect_to case_path(@case)
    else
      render :edit
    end
  end

  def destroy
    @case.destroy
    redirect_to cases_path
  end

  private

  def set_case
    @case = Case.find(params[:id])
  end

  def case_params
    params.require(:case).permit(:start_date, :end_date, :child_name, :family_name, :address, :state)
  end
end
