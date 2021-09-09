class AddLastWatchedEpisodeToSeries < ActiveRecord::Migration[6.1]
  def change
    add_reference :series, :last_watched_episode, foreign_key: {to_table: :movies }
   end
end
