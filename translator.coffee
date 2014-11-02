CSON = require 'season'

CSON.setCacheDir('.cson-cached')
c = CSON.readFileSync('e.cson')
snippets = c['.text.robot']

for _, config of snippets
  console.log "snippet #{config.prefix}"
  console.log "\t#{config.body}"
