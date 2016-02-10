def pretty_file_name(name)
  name.gsub('-', ' ').split.map(&:capitalize).join(' ')
end

subjects = Dir.glob('*').select { |f| File.directory? f }

sub_file_hash = subjects.each_with_object({}) do |sub, hsh|
  hsh[sub] = Dir.entries(sub).select { |f| !File.directory? f }
end

readme = File.open('README.md', 'w+')
readme.write("### Categories\n\n\n\n")
subjects.each { |s| readme.write "* [#{s.capitalize}](##{s})\n"}

sub_file_hash.each do |sub, files|
  readme.write "--- \n"
  readme.write "### #{sub.capitalize}\n"
  files.each {|f| readme.write "- [#{pretty_file_name(f)}](#{sub}/#{f})\n"}
end

readme.close

