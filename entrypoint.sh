#!/bin/bash

OPENLDAP_DEBUGG_LEVEL=32768
# from http://www.openldap.org/doc/admin24/runningslapd.html#Command-Line%20Options
# Level    Keyword          Description
# -1       any              enable all debugging
# 0                         no debugging
# 1        (0x1 trace)      trace function calls
# 2        (0x2 packets)    debug packet handling
# 4        (0x4 args)       heavy trace debugging
# 8        (0x8 conns)      connection management
# 16       (0x10 BER)       print out packets sent and received
# 32       (0x20 filter)    search filter processing
# 64       (0x40 config)    configuration processing
# 128      (0x80 ACL)       access control list processing
# 256      (0x100 stats)    stats log connections/operations/results
# 512      (0x200 stats2)   stats log entries sent
# 1024     (0x400 shell)    print communication with shell backends
# 2048     (0x800 parse)    print entry parsing debugging
# 16384    (0x4000 sync)    syncrepl consumer processing
# 32768    (0x8000 none)    only messages that get logged whatever log level is set


echo "start slapd"
exec slapd -d $OPENLDAP_DEBUGG_LEVEL -u openldap -g openldap
echo "end slapd"

