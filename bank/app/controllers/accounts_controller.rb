class AccountsController < ApplicationController

  def index
    @accounts = Account.all

    respond_to do |format|
      format.html
      format.json {render :json => @accounts.to_json}
    end
  end

end