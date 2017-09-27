class Admin::HerosController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  def index
    @heros=Hero.all
  end
  def new
    @hero=Hero.new
  end
  def show
    @hero=Hero.find(params[:id])
  end
  def edit
    @hero=Hero.find(params[:id])
  end
  def create
    @hero=Hero.new(hero_params)
    if @hero.save
      redirect_to admin_heros_path
    else
      render :new
    end
  end
  def update
    @hero=Hero.find(params[:id])
    if @hero.update(hero_params)
      redirect_to admin_heros_path
    else
      render :edit
    end
  end
  def destroy
    @hero=Hero.find(params[:id])
    @hero.destroy
    redirect_to admin_heros_path
  end
  private
  def hero_params
    params.require(:hero).permit(:name,:alias,:profile,:rank,:star_name,:image)
  end
  def admin_required
    if !current_user.admin?
      redirect_to root
    end
  end
end
