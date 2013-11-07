class CreateSamlAssertions < ActiveRecord::Migration
  def change
    create_table :saml_assertions do |t|
      t.text :saml_response

      t.timestamps
    end
  end
end
