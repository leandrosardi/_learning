require 'tiny_tds'
require 'sequel'

ret = {
  :adapter => 'tinytds',
  :dataserver => 'DEV1\SQLEXPRESS',
  :port => 1433, # Required when using other that 1433 (default)
  :database => 'copernico',
  :user => 'coder',
  :password => 'coder'
}

DB = Sequel.connect(ret)

puts DB["select db_name() as s"].first[:s]
