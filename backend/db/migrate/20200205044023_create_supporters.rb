class CreateSupporters < ActiveRecord::Migration[6.0]
  def change
    create_table :supporters do |t|
      t.string :username

      t.timestamps
    end
  end
end
