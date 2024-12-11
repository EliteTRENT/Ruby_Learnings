begin
  print "Enter file path: "
  path = gets.chomp
  file = File.read(path,"r")
rescue Errno::ENOENT => e
  puts "Error: File not found"
  retry
rescue Errno::EACCES => e
  puts "Error: Permission Denied"
rescue Errno::EISDIR => e
  puts "Error: Directory found, expected a file."
ensure
  file.close if file
end