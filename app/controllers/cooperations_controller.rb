class CooperationsController < ApplicationController
  def index
    @background = 'back-cooperation'
  end

  def create
    @cooperation = Cooperation.new(cooperation_params)
    if @cooperation.save
      flash[:success] = "Спасибо за заявку! Ожидайте звонка."
      CooperationMailer.cooperation_email(@cooperation).deliver_now
      respond_to do |format|
        format.html
        format.json
      end
      redirect_to :back
    else
      flash[:danger] = "Неверные данные!"
      redirect_to :back
    end
  end

  private

  def cooperation_params
    params.require(:cooperation).permit(:name, :email, :text)
  end
end
