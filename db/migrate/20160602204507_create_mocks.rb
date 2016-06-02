class CreateMocks < ActiveRecord::Migration
  def change
    create_table :mocks do |t|
      t.string :path
      t.integer :status, default: 200
      t.string :method, default: 'get'
      t.text :headers, default: ''
      t.text :data_type, default: 'json'
      t.text :body, default: ''

      t.timestamps null: false
    end

    add_index :mocks, [:path, :method], unique: true
  end
end
