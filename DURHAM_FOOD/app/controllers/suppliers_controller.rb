class SuppliersController < ApplicationController
  # GET /suppliers
  # GET /suppliers.xml
  def index
    @suppliers = Suppliers.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @suppliers }
    end
  end

  # GET /suppliers/1
  # GET /suppliers/1.xml
  def show
    @suppliers = Suppliers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @suppliers }
    end
  end

  # GET /suppliers/new
  # GET /suppliers/new.xml
  def new
    @suppliers = Suppliers.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @suppliers }
    end
  end

  # GET /suppliers/1/edit
  def edit
    @suppliers = Suppliers.find(params[:id])
  end

  # POST /suppliers
  # POST /suppliers.xml
  def create
    @suppliers = Suppliers.new(params[:suppliers])

    respond_to do |format|
      if @suppliers.save
        flash[:notice] = 'Suppliers was successfully created.'
        format.html { redirect_to(@suppliers) }
        format.xml  { render :xml => @suppliers, :status => :created, :location => @suppliers }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @suppliers.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /suppliers/1
  # PUT /suppliers/1.xml
  def update
    @suppliers = Suppliers.find(params[:id])

    respond_to do |format|
      if @suppliers.update_attributes(params[:suppliers])
        flash[:notice] = 'Suppliers was successfully updated.'
        format.html { redirect_to(@suppliers) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @suppliers.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.xml
  def destroy
    @suppliers = Suppliers.find(params[:id])
    @suppliers.destroy

    respond_to do |format|
      format.html { redirect_to(suppliers_url) }
      format.xml  { head :ok }
    end
  end
end
