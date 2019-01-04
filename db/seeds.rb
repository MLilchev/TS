# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Geodatum.destroy_all
csv_text = File.read(Rails.root.join('lib', 'seeds', 'AWAD_Data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  c = Geodatum.new
  c.EVENT_ID = row['EVENT_ID']
  c.STATE = row['STATE']
  c.STATE_FIPS = row['STATE_FIPS']
  c.BEGIN_LOCATION = row['BEGIN_LOCATION']
  c.END_LOCATION = row['END_LOCATION']
  c.BEGIN_LAT = row['BEGIN_LAT']
  c.BEGIN_LON = row['BEGIN_LON']
  c.END_LAT = row['END_LAT']
  c.END_LON = row['END_LON']
  puts "#{c.STATE} saved"
  c.save
end
