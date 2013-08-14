class AccountsController < ApplicationController

  def index
    @accounts = Account.all

    respond_to do |format|
      format.html
      format.json {render json: @accounts}
    end
  end


  def deposit
    respond_to do |format|
      format.html
      format.js {}
    end
  end


  def add_amount
    @account = Account.find(params[:id])
    amount_to_add = parseInt(params[:balance])
  end


  def withdraw
    @accounts = Account.all

  end


end