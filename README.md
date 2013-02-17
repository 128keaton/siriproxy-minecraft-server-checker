#siriproxy-minecraft-server-checker
Minecraft server status fetcher.


###Commands

'Check minecraft server'
'Fetch the motto of the day'



###siriproxy-mcs Installation

Add this to your ~/.siriproxy/config.yml file:

```yml
    - name: 'MCS'
      git: 'git://github.com/128keaton/siriproxy-minecraft-server-checker'
      server: 'your.server.ip.here'
```
You need sockit to run this so you need to edit your siriproxy.gemspec to have 
```
s.add_runtime_dependency "sockit"
``` 
under all of the other dependencies. You also need to run 
`rvmsudo gem install sockit`
in terminal. Then type `siriproxy bundle` in the terminal.

If enough requests are filed under issues for port config in the config.YMl, I will add.


