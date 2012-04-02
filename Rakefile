SRC = FileList['*.rb']
TXT = SRC.ext('txt')
SPEC = FileList['*_spec.rb']

def post_process(filename)
  text = File.open(filename, "r") do |f|
    text = f.read.gsub(/0x[\da-f]+/, '0x...').gsub(File.basename(filename, '.txt') + '.rb', 'file.rb')
    text
  end
  File.open(filename, "w") do |f|
    f.write(text);
    puts text;
  end
end

def spec(t)
  `spec #{t.prerequisites} -f specdoc >#{t.name}`
  puts File.read(t.name)
end

SPEC.each do |filename|
  file filename.gsub('.rb', '.txt') => filename do |t|
    spec(t)
  end
end

def version(filename)
  case filename
  when /18/
    'rvm use 1.8.7'
  when /19/
    'rvm use 1.9.2'
  else
    ''
  end
end

rule '.txt' => '.rb' do |t|
  # IRBRC is to override an kink with RVM that
  #   blocks setting prompt from the command line
  files = t.prerequisites.join(' ')
  sh "IRBRC=irbrc #{version(files)} irb #{files} >#{t.name}"
  post_process(t.name)
end

task :default => TXT
