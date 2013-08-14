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


  def create


  end

  def new
    @account = Account.new
    respond_to do |format|
      format.html
      format.js{}
      format.json {render json: @account}
    end
  end


  def withdraw
    @accounts = Account.all
    respond_to do |format|
      format.html
      format.js {}
      format.json {render json: @accounts}
    end
  end


end