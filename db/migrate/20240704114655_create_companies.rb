class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string  :name
      t.string  :subdomain
      t.string  :social_reason
      t.string  :siren
      t.string  :num_tva
      t.string  :address
      t.string  :postal_code
      t.string  :city
      t.string  :country
      t.string  :address2
      t.string  :addon
      t.string  :email
      t.string  :tel
      t.text    :footer_page
      t.text    :activity
      t.string  :logo
      t.string  :establishment
      t.string  :iban
      t.string  :bic
      t.integer :taux_tva
      t.string  :prefix_facture
      t.string  :prefix_devis

      t.timestamps
    end
  end
end
