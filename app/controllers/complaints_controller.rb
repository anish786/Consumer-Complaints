require 'soda/client'

class ComplaintsController < ApplicationController
  def index
#   	client = SODA::Client.new({:domain => 'data.consumerfinance.gov', :app_token => '
# CzLtl1TzwgEKqiIJ9eRKmHtMv'})
# 	 @results = client.get("jhzv-w97w", {"$where" => "company LIKE '%Alpine Credit%'"})

  end

  def results
  	@company_name = params[:company_name].downcase
  	client = SODA::Client.new({:domain => 'data.consumerfinance.gov', :app_token => '
CzLtl1TzwgEKqiIJ9eRKmHtMv'})
	 @result = client.get("jhzv-w97w", {"$where" => "LOWER(company) LIKE '%#{@company_name}%'"})
  end

  def details
  	@company_complaint_id = params[:id]
  	client = SODA::Client.new({:domain => 'data.consumerfinance.gov', :app_token => '
CzLtl1TzwgEKqiIJ9eRKmHtMv'})
	 @detail = client.get("jhzv-w97w", {"$where" => "LOWER(company) LIKE '%#{@company_name}%'"})
  	# @details = @results.get({"$where" => "complaint_id = '#{@company_complaint_id}'"})
  end
end
