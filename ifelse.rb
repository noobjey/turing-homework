def water_status(minutes)
  if minutes < 7
    puts "not boiling"
  elsif minutes == 7
    puts "barely boiling"
  elsif minutes == 9
    puts "boiling"
  else
    puts "hothothot"
  end
end