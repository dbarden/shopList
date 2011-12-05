class ItemsListsController < ApplicationController
  # GET /items_lists
  # GET /items_lists.json
  def index
    @items_lists = ItemsList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items_lists }
    end
  end

  # GET /items_lists/1
  # GET /items_lists/1.json
  def show
    @items_list = ItemsList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @items_list }
    end
  end

  # GET /items_lists/new
  # GET /items_lists/new.json
  def new
    @items_list = ItemsList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @items_list }
    end
  end

  # GET /items_lists/1/edit
  def edit
    @items_list = ItemsList.find(params[:id])
  end

  # POST /items_lists
  # POST /items_lists.json
  def create
    @items_list = ItemsList.new(params[:items_list])

    respond_to do |format|
      if @items_list.save
        format.html { redirect_to @items_list, notice: 'Items list was successfully created.' }
        format.json { render json: @items_list, status: :created, location: @items_list }
      else
        format.html { render action: "new" }
        format.json { render json: @items_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items_lists/1
  # PUT /items_lists/1.json
  def update
    @items_list = ItemsList.find(params[:id])

    respond_to do |format|
      if @items_list.update_attributes(params[:items_list])
        format.html { redirect_to @items_list, notice: 'Items list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @items_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items_lists/1
  # DELETE /items_lists/1.json
  def destroy
    @items_list = ItemsList.find(params[:id])
    @items_list.destroy

    respond_to do |format|
      format.html { redirect_to items_lists_url }
      format.json { head :ok }
    end
  end
end
