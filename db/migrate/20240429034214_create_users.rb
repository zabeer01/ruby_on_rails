class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null :false 
      t.string :password_digest
      t.string :status, default: 'active'
      t.timestamps
    end
  end
end
