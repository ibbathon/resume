class ResumesController < ApplicationController
  def new
  end

  def create
  end

  def show
		@resume = Resume.find(params[:id])
  end

  def index
  end
end
