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
    #this redirect doesn't seem to work
     redirect_to(@account)
  else
    #this one too. I have to check manually for reflected changes
    redirect_to(@account)
  end
  end
#Add private account params since params[:account] didn't seem to be working
  private
  def account_params
    params.require(:account).permit(:accountnumber, :balance, :pin)
  end
end
