class ReportsController < ApplicationController
  before_action :set_user
  before_action :set_report, only: %i[update show destroy edit]
  def index
    @reports = Report.order(created_at: :desc) 
  end

  def show

  end

  def new
    @report = @user.reports.new
  end

  def create
    @report = @user.reports.new(report_params)
    respond_to do |format|
      if @report.save
        format.html {redirect_to user_reports_path, notice:"Reporte creado."}
      else
        format.html {redirect_to user_reports_path, alert:"No pudo ser creada el reporte."}
      end
    end
  end
  

  def edit
    
  end

  private

  def set_user
    @user = User.find(params[:user_id])    
  end

  def set_report
    @report = @user.reports.find(params[:id])
  end
  
  def report_params
    params.require(:report).permit(:user, :titulo, :contenido, :fecha)
  end
  

end
