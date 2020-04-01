class AddStepIdToTicketArticles < ActiveRecord::Migration[5.1]
  def up

    # return if it's a new setup
    return if !Setting.find_by(name: 'system_init_done')

    add_column :ticket_articles, :step_id, :integer
  end
end
