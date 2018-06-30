class PagesController < ApplicationController

  def index
    @report = Report.new
    @report_categories = ReportCategory.all
  end

  def about
  end

  def contact
  end

  def terms
  end

  def mission
  end
end
