class ResumesController < ApplicationController
  def new
  end

  def create
  end

  def show
    get_resume
    if !@resume
      redirect_to "https://google.com"
    end
  end

  def default
    get_resume
    if !@resume
      redirect_to "https://google.com"
    else
      render :show
    end
  end

  def index
  end

  private
  def get_resume
    if params[:id] and Resume.exists? params[:id]
      @resume = Resume.find params[:id]
    else
      flash[:alert] = "Résumé #{params[:id]} does not exist, redirecting to primary" if params[:id]
      @resume = Resume.all.where(primary: true).first
    end
  end
end
