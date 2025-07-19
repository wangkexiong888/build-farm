#!/usr/bin/env bash

OPENWRT_SDK="$1"

OAF_MAKEFILE="${OPENWRT_SDK}/feeds/openappfilter/oaf/Makefile"
if [ -f "${OAF_MAKEFILE}" ]; then
  sed -i '/^EXTRA_CFLAGS:=/ s|$| -Wno-misleading-indentation|' "${OAF_MAKEFILE}"
fi

