class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.find(params[:id])
    if @actor.save(actor_params)
      redirect_to actor_path

    else
      render 'new'
    end
  end

  def edit 
    @actor = Actor.edit
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update_attributes(actor_params)
      redirect_to actor_path

    else
      render 'edit' 
    end
  end

  def destroy
  @actor = Actor.find(params[:id]).destroy
    if @actor.destroy
      redirect_to root_path, notice: "Actor removed!"

    else
      flash.now.alert = "Error deleting actor"
      redirect_to root_path
    end
  end
    
end

private

  def actor_params
    params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
  end
