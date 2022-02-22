#!/bin/bash
if puppet config print server | grep -v -q `hostname`; then
  echo "This task can only be run on the PE master!"; 
  exit 1
fi
if [ -z "${PT_environment}" ]
then
    /opt/puppetlabs/bin/puppet-code deploy --all --wait
else
    /opt/puppetlabs/bin/puppet-code deploy $PT_environment --wait
fi
