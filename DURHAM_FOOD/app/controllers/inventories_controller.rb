class InventoriesController < ApplicationController
  # GET /inventories
  # GET /inventories.xml
  def index
    @inventories = Inventories.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventories }
    end
  end

  # GET /inventories/1
  # GET /inventories/1.xml
  def show
    @inventories = Inventories.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventories }
    end
  end

  # GET /inventories/new
  # GET /inventories/new.xml
  def new
    @inventories = Inventories.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventories }
    end
  end

  # GET /inventories/1/edit
  def edit
    @inventories = Inventories.find(params[:id])
  end

  # POST /inventories
  # POST /inventories.xml
  def create
    @inventories = Inventories.new(params[:inventories])

    respond_to do |format|
      if @inventories.save
        flash[:notice] = 'Inventories was successfully created.'
        format.html { redirect_to(@inventories) }
        format.xml  { render :xml => @inventories, :status => :created, :location => @inventories }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventories.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventories/1
  # PUT /inventories/1.xml
  def update
    @inventories = Inventories.find(params[:id])

    respond_to do |format|
      if @inventories.update_attributes(params[:inventories])
        flash[:notice] = 'Inventories was successfully updated.'
        format.html { redirect_to(@inventories) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventories.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.xml
  def destroy
    @inventories = Inventories.find(params[:id])
    @inventories.destroy

    respond_to do |format|
      format.html { redirect_to(inventories_url) }
      format.xml  { head :ok }
    end
  end
end
