class EtdsController < ApplicationController
  # GET /etds
  # GET /etds.xml
  def index
    @etds = Etd.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @etds }
    end
  end

  # GET /etds/1
  # GET /etds/1.xml
  def show
    @etd = Etd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @etd }
    end
  end

  # GET /etds/new
  # GET /etds/new.xml
  def new
    @etd = Etd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @etd }
    end
  end

  # GET /etds/1/edit
  def edit
    @etd = Etd.find(params[:id])
  end

  # POST /etds
  # POST /etds.xml
  def create
    @etd = Etd.new(params[:etd])

    respond_to do |format|
      if @etd.save
        flash[:notice] = 'Etd was successfully created.'
        format.html { redirect_to(@etd) }
        format.xml  { render :xml => @etd, :status => :created, :location => @etd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @etd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /etds/1
  # PUT /etds/1.xml
  def update
    @etd = Etd.find(params[:id])

    respond_to do |format|
      if @etd.update_attributes(params[:etd])
        flash[:notice] = 'Etd was successfully updated.'
        format.html { redirect_to(@etd) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @etd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /etds/1
  # DELETE /etds/1.xml
  def destroy
    @etd = Etd.find(params[:id])
    @etd.destroy

    respond_to do |format|
      format.html { redirect_to(etds_url) }
      format.xml  { head :ok }
    end
  end
end
