import config

def getsoundlvl():
        return 130.0

query = "INSERT INTO events SET soundlevel=%s"%(getsoundlvl())

db = config.Database()
db.insert(query)
