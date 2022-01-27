fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Fivem Vue Template'
author 'Bombay'
repository 'https://github.com/BombayV/fivem-vue-template'

ui_page 'web/build/index.html'

files {
  'web/dist/index.html',
  'web/dist/**/*'
}

client_scripts {
  'client/*.lua'
}

server_scripts {
  'server/*.lua'
}
