class PhysiciansController < ApplicationController
  def index
    if !params[:search].blank? 
      @phy=Physician.where("name LIKE ? OR age LIKE ? OR experiance LIKE ?  " , "%#{params[:search]}%", "%#{params[:search]}%","%#{params[:search]}%")
    else    
      @phy = Physician.all
    end
    $status = 0
  end

  def show
    @phy = Physician.find params[:id]

    @patients_name=Appointment.where(physician:@phy.name)
    @patients=Patient.find_by name:@patients_name.name

    @patient_comments=Comment.where(person_id:params[:id]).where(person_type:"Physician")
    @physician_comments=Comment.where(person_id:params[:id]).where(person_type:"Physician")
  end

  def new
    @phy = Physician.new
  end

  def create
     @phy = Physician.new(physician_params)
    if @phy.save
      redirect_to physicians_path
    else 
      render 'new'
    end
  end

  def update

    @phy=Physician.find params[:id]
    
    if params[:search]
         @e = @phy.pictures.create(name: params[:search])
         if @e.errors.any?
            $status = 0
         else 
            $status = 1
         end  
        redirect_to physician_path(@phy) 
      else @phy.update_attributes(physician_params)
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
