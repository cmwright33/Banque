class AccountsController < ApplicationController

  def index
    @accounts = Account.all

    respond_to do |format|
      format.html
      format.js {}
      format.json {render :json => @accounts.to_json}
    end
  end

  def show


  end
  def withdraw


  end

  def deposit

  end

  def create


  end

  def new


  end

end