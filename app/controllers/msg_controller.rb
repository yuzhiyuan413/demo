class MsgController < ApplicationController
  def index
    
  end
  def create
    _item = MMsg.create(params.require(:m_msg).permit(:typ,:con)) #errors valid?
    render json:{status:true,valid:_item.valid?,item:_item}
  end
  def list
    render json: MMsg.order('created_at desc').offset((params[:page].to_i - 1) * 10).limit(10) 
  end
end
