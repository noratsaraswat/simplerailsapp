class ContactusController < ApplicationController
  # GET /contactus
  # GET /contactus.xml
  def index
    @contactus = Contactu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contactus }
    end
  end

  # GET /contactus/1
  # GET /contactus/1.xml
  def show
    @contactu = Contactu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contactu }
    end
  end

  # GET /contactus/new
  # GET /contactus/new.xml
  def new
    @contactu = Contactu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contactu }
    end
  end

  # GET /contactus/1/edit
  def edit
    @contactu = Contactu.find(params[:id])
  end

  # POST /contactus
  # POST /contactus.xml
  def create
    @contactu = Contactu.new(params[:contactu])

    respond_to do |format|
      if @contactu.save
        format.html { redirect_to(@contactu, :notice => 'Contactu was successfully created.') }
        format.xml  { render :xml => @contactu, :status => :created, :location => @contactu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contactu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contactus/1
  # PUT /contactus/1.xml
  def update
    @contactu = Contactu.find(params[:id])

    respond_to do |format|
      if @contactu.update_attributes(params[:contactu])
        format.html { redirect_to(@contactu, :notice => 'Contactu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contactu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contactus/1
  # DELETE /contactus/1.xml
  def destroy
    @contactu = Contactu.find(params[:id])
    @contactu.destroy

    respond_to do |format|
      format.html { redirect_to(contactus_url) }
      format.xml  { head :ok }
    end
  end
end
