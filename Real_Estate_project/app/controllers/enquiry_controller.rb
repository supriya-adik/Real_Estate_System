class EnquiryController < ApplicationController
  def index
  end

  def new
  	  @en=Enquiry.new
  end

  def create
  	   @en = Enquiry.new(enquiry_params)
       @en.save
       redirect_to "/enquiry/thank_you_page"

  end

  def show 
  end

  def thank_you_page
  end

  private 
  def enquiry_params
     params.require(:enquiry).permit(:name, :mobile, :addr, :description)
   
  end

end
