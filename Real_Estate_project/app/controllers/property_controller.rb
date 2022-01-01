class PropertyController < ApplicationController
  def index
     @property = Property.all
     
  end

  def search
     @query = params[:search_key]
     @property = Property.where("Properties.city LIKE?",["%#{@query}%"])
     render "index"
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property=Property.new
  end

  def edit
  end

  def update
  end

  def create
    
       @property = Property.new(property_params)
       @property.save
       redirect_to root_url

  end

  def destroy
  end

private 
  def property_params
     params.require(:property).permit(:p_type, :city, :place, :price, :status, :image, :short_desc, :User_id)
   
  end

end
  