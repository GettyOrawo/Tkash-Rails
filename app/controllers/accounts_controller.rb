class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  def show
   @account = Account.find(params[:id])
  end
  def edit
   @account = Account.find(params[:id])
  end
  def update
  @account = Account.find(params[:id])
  if @account.update(params =>:accountnumber)
        redirect_to(@account)
  end
  end
end
