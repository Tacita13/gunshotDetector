import config

db = config.Database()
latest_event = "SELECT eid, timestamp, soundlevel, address, longitude, latitude FROM events e, coordinates c, devices d WHERE eid = (SELECT MAX(eid) FROM events)"
