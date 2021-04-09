class UsersController < ApplicationController
  before_action :set_user, only: %i[update destroy edit show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to users_path, notice:"Usuario creado."}
      else
        format.html {redirect_to users_path, alert:"No pudo ser creado el usuario."}
      end
    end
  end
  

  def edit
  end

  def update
    if @user.update(user_params)
      flash.notice = "Usuario actualizado"
      redirect_to users_path
    else
      render :edit 
    end    
  end

  def destroy
    @user.destroy 
  end
  
  

  private 

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:identificacion, :password, :password_confirmation, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :telefono, :sexo, :direccion, :fecha_nacimiento)
  end
  
end
