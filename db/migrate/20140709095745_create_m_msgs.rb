class CreateMMsgs < ActiveRecord::Migration
  def change
    create_table :m_msgs,:options => 'CHARSET=utf8'  do |t|
      t.string :recsts,:limit=>1,:default=>0
      t.string :typ
      t.string :con 
      t.timestamps
    end
  end
end
