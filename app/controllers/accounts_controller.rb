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
  if @account.update_attributes(account_params)
     redirect_to @account
  else
    render 'edit'
  end
  end
  private
  def account_params
    params.require(:account).permit(:accountnumber, :balance, :pin)
  end
end
