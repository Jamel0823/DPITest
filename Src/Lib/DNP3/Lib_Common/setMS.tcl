
proc opendnpmaster {{ip}} {
  global mchannel msesn
  set mchannel [mdnpopenchannel type tcp mode client host $ip name mdnp]
  set msesn [mdnpopensession channel $mchannel source 3 destination 4]
}

proc opendnpslave {} {
  global schannel ssesn
  set schannel [sdnpopenchannel type tcp mode server name sdnp]
  set ssesn [sdnpopensession channel $schannel source 4 destination 3 userManagedEvents false]
}

proc closednpmaster {} {
  global mchannel msesn
  mdnpclosesession session $msesn
  mdnpclosechannel channel $mchannel
}

proc closednpslave {} {
  global schannel ssesn
  sdnpclosesession session $ssesn
  sdnpclosechannel channel $schannel
}
