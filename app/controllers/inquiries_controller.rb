class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      redirect_to "/inquiries/#{@inquiry.name}/#{@inquiry.id}"
    else
      render :new
    end
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :title, :inquiry, :reply, :replyok, :id)
  end

end
