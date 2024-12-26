proc get_data {} { 
  #Simulate a scenario where data might be empty
  if {[rand] < 0.5} { 
    return {}
  } else { 
    return [list 1 2 3 4 5]
  }
}

proc process_data {data} {
  if {[llength $data] > 0} {
    foreach item $data {
      puts "Processing: $item"
    } 
  } else {
    puts "No data to process"
  }
}

set my_data [get_data]
process_data $my_data