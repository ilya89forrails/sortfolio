class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :filter]

  def index
    @studios = Studio.all
    @studios = @studios.where(budget: params[:budget]) if params[:budget].present?
    @studios = @studios.where(city: params[:city]) if params[:city].present?
    @studios = @studios.order(payed: :desc)
  end

  def show
  end

  def new
    @studio = current_user.studios.build
  end

  def edit
  end

  def create
    @studio = current_user.studios.build(studio_params)

    respond_to do |format|
      if @studio.save
        format.html { redirect_to @studio, notice: 'Studio was successfully created.' }
        format.json { render :show, status: :created, location: @studio }
      else
        format.html { render :new }
        format.json { render json: @studio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @studio.update(studio_params)
        format.html { redirect_to @studio, notice: 'Studio was successfully updated.' }
        format.json { render :show, status: :ok, location: @studio }
      else
        format.html { render :edit }
        format.json { render json: @studio.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @studio.destroy
    respond_to do |format|
      format.html { redirect_to studios_url, notice: 'Studio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :city, :budget, :logo, :technologies, :payed, :user_id)
  end
end
