class PhysiciansController < ApplicationController
  def index
    @phy = Physician.all
  end

  def show
    @phy = Physician.find params[:id]
  end

  def new
    @phy = Physician.new
  end

  def create
     @phy = Physician.new(physician_params)
    if @phy.save
      redirect_to physicians_path
    end
  end

  def update

    @phy=Physician.find params[:id]
    if @phy.update_attributes(physician_params)
      redirect_to physicians_path
    end
  end

  def edit
     @phy = Physician.find params[:id]
  end

  def destroy
    @phy = Physician.find params[:id]
    if @phy.delete
       redirect_to physicians_path
     end  

  end


private 
  def physician_params
    params.require(:physician).permit(:name,:age,:experiance)
  end
end
