class PhysiciansController < ApplicationController
    def index
  end

  def show
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
  end

  def edit
  end

  def destroy
  end


private 
  def physician_params
    params.require(:physician).permit(:name,:age,:experiance)
  end
end
