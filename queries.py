import sqlite3
from pprint import pprint


def execute_query() -> list:
    query_num = input('Input query number: ')
    query = 'query_sql/query_' + query_num + '.sql'

    with open(query, 'r') as q:
        sql = q.read()

    with sqlite3.connect('hw_database.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


pprint(execute_query())
