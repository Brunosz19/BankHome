class AccountsController < ApplicationController
  before_action :authenticate_user!

  def new
    @account = Account.new
    @accounts = Account.all
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to root_path, notice: "La cuenta se creó correctamente."
    else
      @error_message = @account.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
  
    if @account.update(account_params)
      redirect_to root_path, notice: "La cuenta se actualizó correctamente."
    else
      flash.now[:alert] = "Los datos son inválidos."
      @error_message = @account.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to root_path, notice: "La cuenta se eliminó correctamente."
  end

  private

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
