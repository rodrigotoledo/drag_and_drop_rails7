class ItemsController < ApplicationController
  def update
    @item = GlobalID::Locator.locate_signed(params[:sgid])
    @item.insert_at(params[:position])
  end
end