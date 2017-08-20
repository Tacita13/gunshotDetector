import MySQLdb
import MySQLdb.cursors

class Database:

	host="localhost"
	user="root"
	password="Hf2mw0010t6"
	db="gunshots"
	cursor = MySQLdb.cursors.DictCursor

	def __init__(self):
		self.connection = MySQLdb.connect(self.host, self.user, self.password, self.db, cursorclass=self.cursor)
		self.cursor = self.connection.cursor()

	def insert(self, query):
		try:
			self.cursor.execute(query)
			self.connection.commit()
		except:
			self.connection.rollback()

	
	def query(self, query):
		cursor = self.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute(query)
		return cursor.fetchall()
		
	def __del__(self):
		self.connection.close()
