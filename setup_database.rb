File.delete('world_cities.db') if Dir['world_cities'].any?
exec('sqlite3 world_cities.db < world_cities.sql')
