class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def insert
 @user = User.new

    @unm = params[:unm]
    @pwd = params[:pwd]

    if @unm!=nil && @pwd!=nil
    @user.username = @unm
    @user.password = @pwd

    @user.save
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @upd = params[:upd]
    @user.update_attribute("password",params[:upd])
    
  end

  def delete
  end

end
