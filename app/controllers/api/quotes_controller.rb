class Api::QuotesController < ApplicationController
  skip_before_action :verify_authenticity_token  
  def show
    @quote = Quote.find(params[:id])
  end

  def create
   @single_quote = Quote.create!(quote_params)
   # json_response(@destination, :created)
  end

  private
  def quote_params
    params.permit(:text, :author)
  end
end
