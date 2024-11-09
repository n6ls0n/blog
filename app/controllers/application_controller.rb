class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :record_page_view

  def record_page_view
    ActiveAnalytics.record_request(request)
  end
end
