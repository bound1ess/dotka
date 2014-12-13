task :specs do
	sh "rspec ./spec/ --color --format=documentation"
end

task :default => [:specs] do
	puts "All done!"
end

task :build do
	sh "rm dotka-*.gem"
	sh "gem build dotka.gemspec"
end

task :push do
	sh "ls|grep dotka|head -n1|xargs gem push"
end

task :update => [:specs, :build, :push] do
	puts "Gem updated!"
end
