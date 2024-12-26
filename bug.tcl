proc get_data {} { 
  set data [list 1 2 3 4 5] 
  return $data
}

proc process_data {data} {
  foreach item $data {
    puts "Processing: $item"
  }
}

set my_data [get_data]
process_data $my_data