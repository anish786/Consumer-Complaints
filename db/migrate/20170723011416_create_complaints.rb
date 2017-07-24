class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.string :company
      t.string :company_public_response
      t.string :company_response
      t.string :complaint_id
      t.string :consumer_consent_provided
      t.string :consumer_disputed
      t.string :date_received
      t.string :date_sent_to_company
      t.string :issue
      t.string :product
      t.string :state
      t.string :sub_issue
      t.string :sub_product
      t.string :submitted_via
      t.string :timely
      t.string :zip_code
      t.timestamps
    end
  end
end
