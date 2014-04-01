class StatusesController < ApplicationController
  # GET /statuses
  # GET /statuses.xml
  def index
    @statuses = Statuses.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @statuses }
    end
  end

  # GET /statuses/1
  # GET /statuses/1.xml
  def show
    @statuses = Statuses.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @statuses }
    end
  end

  # GET /statuses/new
  # GET /statuses/new.xml
  def new
    @statuses = Statuses.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @statuses }
    end
  end

  # GET /statuses/1/edit
  def edit
    @statuses = Statuses.find(params[:id])
  end

  # POST /statuses
  # POST /statuses.xml
  def create
    @statuses = Statuses.new(params[:statuses])

    respond_to do |format|
      if @statuses.save
        flash[:notice] = 'Statuses was successfully created.'
        format.html { redirect_to(@statuses) }
        format.xml  { render :xml => @statuses, :status => :created, :location => @statuses }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @statuses.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statuses/1
  # PUT /statuses/1.xml
  def update
    @statuses = Statuses.find(params[:id])

    respond_to do |format|
      if @statuses.update_attributes(params[:statuses])
        flash[:notice] = 'Statuses was successfully updated.'
        format.html { redirect_to(@statuses) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @statuses.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.xml
  def destroy
    @statuses = Statuses.find(params[:id])
    @statuses.destroy

    respond_to do |format|
      format.html { redirect_to(statuses_url) }
      format.xml  { head :ok }
    end
  end
end
