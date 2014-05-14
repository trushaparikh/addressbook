class AddresslistsController < ApplicationController
  before_action :set_addresslist, :only => [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

 
  def index
    @addresslists = current_user.addresslists.all
  end

 
  def show
  end

  
  def new
    
    @addresslist = Addresslist.new
  
    @countries =Country.all
    @cancel_path = addresslists_path
  end

  
  def edit
    @countries =Country.all
  end

  
  def create
    @user = current_user
    @addresslist = @user.addresslists.new(addresslist_params)
    
    
    respond_to do |format|
      
      if @addresslist.save
        format.html { redirect_to addresslists_path, notice: 'Address was successfully created.' }
        format.json { render action: 'show', status: :created, location: @addresslist }
      else
        format.html { render action: 'new' }
        format.json { render json: @addresslist.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @addresslist.update(addresslist_params)
        format.html { redirect_to addresslists_path, notice: 'Address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @addresslist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @addresslist.destroy
    respond_to do |format|
      format.html { redirect_to addresslists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addresslist
      @addresslist = Addresslist.find(params[:id])
      @cancel_path = addresslist_path(@addresslist)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addresslist_params
      params.require(:addresslist).permit(:street1, :street2, :city,:state,:phone,:country_id,:user_id)
    end
end
