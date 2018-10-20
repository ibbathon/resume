class AddStylingIndicatorsToExperienceSection < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :exact_days_unknown, :boolean, default: false
    add_column :experiences, :exact_months_unknown, :boolean, default: false
    add_column :sections, :display_condensed, :boolean, default: false
  end
end
