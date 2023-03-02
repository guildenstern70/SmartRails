# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#
class ItemsController < ApplicationController
  def index
    logger.info('Items Controller - page: inventory')
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    logger.info('Items Controller - POST: new item')
    begin
      @item = Item.new
      @item.part_number = params[:partnumber]
      @item.description = params[:description]
      @item.save
    rescue StandardError
      @errors = true
    end

    redirect_to '/items/index'
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    logger.info("Items Controller - POST: update for ID##{params[:id]}")

    begin
      @item = Item.find(params[:id])
      @item.update_attribute('part_number', params[:partnumber])
      @item.update_attribute('description', params[:description])
    rescue StandardError
      @errors = true
    end

    redirect_to '/items/index'
  end

  def create
    @items = Item.new(title: '...', body: '...')

    if @items.save
      redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to '/items/index', status: :see_other
  end

  private

  def item_params
    params.require(:id).permit(:partnumber, :description)
  end
end
