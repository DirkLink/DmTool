class ItemsController < ApplicationController
  def index
    @items = Items.all.limit(20)
  end
end
