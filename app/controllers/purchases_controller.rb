class PurchasesController < ApplicationController
  def index
    @purchases = current_user.purchases
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new
    @purchase.purchased_on = params[:purchased_on]
    @purchase.item_id = params[:item_id]
    @purchase.store_id = params[:store_id]
    @purchase.user_id = params[:user_id]

    if @purchase.save
      redirect_to "/purchases", :notice => "Purchase created successfully."
    else
      render 'new'
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])

    @purchase.purchased_on = params[:purchased_on]
    @purchase.item_id = params[:item_id]
    @purchase.store_id = params[:store_id]
    @purchase.user_id = params[:user_id]

    if @purchase.save
      redirect_to "/purchases", :notice => "Purchase updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])

    @purchase.destroy

    redirect_to "/purchases", :notice => "Purchase deleted."
  end
end
