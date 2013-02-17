require 'cora'
require 'siri_objects'
require 'pp'
require 'sockit'
#######
# This is a "hello world" style plugin. It simply intercepts the phrase "test siri proxy" and responds
# with a message about the proxy being up and running (along with a couple other core features). This
# is good base code for other plugins.
#
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::MCS < SiriProxy::Plugin

  listen_for /check server/i do
   
    say "Checking minecraft server" 

      s = TCPSocket.open("mc.keatonburleson.com", "25565")
	s.puts "\xFE\x01"
   	 repl = s.gets
    	s.close
   
qstring = repl[3,repl.length].force_encoding("utf-16be").encode("utf-8")
      qarray = qstring.split("\0")
      qdict = {}
      qdict[:pversion] = qarray[1]
      $version = qarray[2]
      qdict[:sversion] = qarray[2]
      qdict[:motd] = qarray[3]
      $players = qarray[4]
      $max = qarray[5]
      qdict[:players] = {:online => qarray[4], :max => qarray[5]}
     	
 	 say "The version is: #{$version}. There are " + $players +" out of "+ $max +" players online!"
   request_completed
end
end