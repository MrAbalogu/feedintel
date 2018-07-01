class DashboardController < ApplicationController
	
before_action :authenticate_user!

layout 'dashboard'

  def index
  	@reports = Report.all.order('created_at desc')

  	@reporters  = User.where(role: 'reporter')

  	@report_categories = ReportCategory.all
  end
end
