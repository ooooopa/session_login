class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ���O�C�����������ꍇ
    else
      flash.now[:danger] = '���O�C���Ɏ��s���܂���'
      render 'new'
    end
  end
end
