
desc "Compile swf"
task :compile do
  cmd = "mxmlc -default-background-color=#FFFFFF -default-frame-rate=24 -default-size 760 590 -target-player=10.0.0 -use-network=true -benchmark=true -output=bin/jack2.swf -source-path+=src -verbose-stacktraces=true -warnings=true src/Main.as"
  system(cmd)
end