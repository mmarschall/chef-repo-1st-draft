name "base"

run_list "recipe[ntp::disable]"

default_attributes "ntp" => {
  "servers" => ["0.pool.ntp.org", "1.pool.ntp.org", "2.pool.ntp.org"]
}