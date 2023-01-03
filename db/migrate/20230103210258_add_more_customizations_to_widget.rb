class AddMoreCustomizationsToWidget < ActiveRecord::Migration[7.0]
  def change
    add_column :widgets, :text_color, :string
    add_column :widgets, :thank_you_message, :string
  end
end
