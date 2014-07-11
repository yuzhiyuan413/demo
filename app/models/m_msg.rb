#encoding : utf-8
class MMsg < ActiveRecord::Base
  validates_presence_of :typ,:message => "类型不能为空!"
  validates_presence_of :con,:message => "内容不能为空!"
end
