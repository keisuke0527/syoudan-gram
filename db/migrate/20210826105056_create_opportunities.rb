class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|

      t.string     :title,            null: false        
      t.integer    :phase_id,         null: false        
      t.integer    :motivation_id,    null: false        
      t.text       :bottle_neck,      null: false        
      t.text       :next_action,      null: false         
      t.references :user,             foreign_key: true  

      t.timestamps
    end
  end
end
