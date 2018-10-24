class ResumesController < ApplicationController
  def new
  end

  def create
  end

  def show
    get_vars
    if !@resume
      redirect_to "https://google.com"
    end
  end

  def index
  end

  private

  def get_vars
    get_resume
    get_style
    get_layout
  end

  def get_resume
    if params[:id] && Resume.exists?(params[:id])
      @resume = Resume.find params[:id]
    else
      flash[:alert] = "Résumé #{params[:id]} does not exist, redirecting to primary" if params[:id]
      @resume = Resume.all.where(primary: true).first
    end
  end

  def get_style
    @style = Style.find(params[:style_id]) if params[:style_id] && Style.exists?(params[:style_id])
    @style ||= Style.find_by(uid: params[:style_uid]) if params[:style_uid]
    @style ||= @resume.preferred_style
    @style ||= Style.find_by(uid: 'original')
  end

  def get_layout
    @layout = ResumeLayout.find(params[:layout_id]) if params[:layout_id] && ResumeLayout.exists?(params[:layout_id])
    @layout ||= ResumeLayout.find_by(uid: params[:layout_uid]) if params[:layout_uid]
    @layout ||= @resume.preferred_layout
    @layout ||= ResumeLayout.find_by(uid: 'original')
  end
end
