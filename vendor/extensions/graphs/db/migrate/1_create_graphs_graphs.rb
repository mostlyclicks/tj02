class CreateGraphsGraphs < ActiveRecord::Migration

  def up
    create_table :refinery_graphs do |t|
      t.string :name
      t.text :excerpt
      t.text :description
      t.text :code
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-graphs"})
    end

    drop_table :refinery_graphs

  end

end
