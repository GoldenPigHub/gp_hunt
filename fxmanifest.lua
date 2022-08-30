fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"
description 'QBCore hunt and sell'
version '1.0.0'

client_scripts {
    'client/*.lua',
    'client/*.js'
}

server_scripts {
    'server/*.lua'
}

shared_scripts {
    'shared/config.lua',
}

exports {
    'DataViewNativeGetEventData'
}

lua54 'yes'