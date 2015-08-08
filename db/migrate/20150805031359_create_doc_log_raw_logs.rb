class CreateDocLogRawLogs < ActiveRecord::Migration
  def change
    create_table :doc_log_raw_logs do |t|
      t.integer :doc_raptor_log_id
      t.datetime :doc_raptor_created_at
      t.string :name
      t.string :document_type
      t.string :document_url
      t.boolean :test
      t.string :tag
      t.boolean :success
      t.boolean :javascript
      t.boolean :async
      t.string :strict
      t.string :ip_address
      t.float :generation_time
      t.integer :input_size
      t.integer :output_size
      t.text :prince_options
      t.text :validation_errors
      t.text :generation_log
      t.timestamps
    end
  end
end
