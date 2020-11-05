#!/bin/bash
#runs make distclean from the buildroot directory
#Author - Pavan Shiralagi

cd `dirname $0`/buildroot

make distclean
