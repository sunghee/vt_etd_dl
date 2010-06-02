class CreateEtds < ActiveRecord::Migration
  def self.up
    create_table :etds do |t|
      t.column :title, :string
      t.column :department, :string
      t.column :degree, :string
      t.column :issued_date, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :etds
  end
end
