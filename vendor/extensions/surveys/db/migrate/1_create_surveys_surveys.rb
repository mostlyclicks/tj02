class CreateSurveysSurveys < ActiveRecord::Migration

  def up
    create_table :refinery_surveys do |t|
      t.string :name
      t.text :description
      t.string :survey_link
      t.datetime :survey_end
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-surveys"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/surveys/surveys"})
    end

    drop_table :refinery_surveys

  end

end
