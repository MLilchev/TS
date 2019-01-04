require 'csv'
namespace :tornadoes do
  desc "Create tornadoes tables"
  task seed_tornadoes: :environment do


    State.destroy_all
    Episode.destroy_all
  	Event.destroy_all


  	CSV.foreach("lib/assets/states.csv", :headers =>true) do |row|


      State.create!(
      fip: row[4].to_i,
      name: row[3],
      code: row[0],
      lat: row[1].to_f,
      lon: row[2].to_f
    )
    end

    CSV.foreach("lib/assets/episodes.csv", :headers =>true) do |row|

  state = State.find_by(fip: row[2].to_i)
  state_id = state ? state.id.to_i : nil


    Episode.create!(
    episode: row[1],
    fip: row[2].to_i,
    narrative: row[3],
    state_id: state_id
)
end


CSV.foreach("lib/assets/events.csv", :headers =>true) do |row|

    episode = Episode.find_by(episode: row[23].to_i)
    episode_id = episode ? episode.id.to_i : nil


    Event.create!(
    event: row[1].to_i,
    begin_ym: row[2].to_i,
    begin_day: row[3].to_i,
    begin_time: row[4].to_i,
    end_ym: row[5].to_i,
    end_day: row[6].to_i,
    end_time: row[7].to_i,
    year: row[8].to_i,
    month: row[9],
    begin_dt: row[10],
    end_dt: row[11],
    damage: row[12],
    tor_f_scale: row[13],
    tor_length: row[14],
    tor_width: row[15],
    begin_loc: row[16],
    end_loc: row[17],
    begin_lat: row[18],
    begin_lon: row[19],
    end_lat: row[20],
    end_lon: row[21],
    narrative: row[22],
    episode_id: episode_id,
    episode: row[23].to_i
)
  end
end
end
