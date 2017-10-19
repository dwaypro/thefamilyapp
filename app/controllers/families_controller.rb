class FamiliesController < ApplicationController
  def index
  	@family = Family.all
    @messages = Message.all	  		
  end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    @family.user_id = current_user.id

    if @family.save
      redirect_to profile_path(current_user.id)
    else 
      render 'new'
    end 
  end

  def destroy
    @family = family.find(param[:id])
    if @family.destroy
      redirect_to family_path
    else
      redirect_to family_path
    end
  end

  private
  def family_params
    params.require(:family).permit(:name)
  end

end
