class CreateIndicatorsIndicators < ActiveRecord::Migration

  def up
    create_table :refinery_indicators do |t|
      t.string :name
      t.string :subject
      t.string :source
      t.string :iframe_url
      t.string :csv_url
      t.text :description
      t.string :city_tags
      t.string :zip_tags
      t.string :state_tags
      t.string :meta_tags
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-indicators"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/indicators/indicators"})
    end

    drop_table :refinery_indicators

  end

end
