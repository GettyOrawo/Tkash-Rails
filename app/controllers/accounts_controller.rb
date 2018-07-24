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
  def new
    @account = Account.new
  end
  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:sucess] = "created account successfully"
      redirect_to(@account)
    else
      render 'new'
    end
  end
  private
  def account_params
    params.require(:account).permit(:accountnumber, :balance, :pin)
  end
end
