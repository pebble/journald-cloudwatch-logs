#!/bin/sh

cat >/tmp/journal.config <<EOF
log_group = "${LOG_GROUP}"
state_file = "/run/journald-cloudwatch/state"
EOF

/go/bin/journald-cloudwatch-logs /tmp/journal.config

