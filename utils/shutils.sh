#!/bin/bash

function CHECK() {
  echo "CHECK Running CMD[$*]..."
  $*
  local ret_code=$?
  if [ $ret_code -ne 0 ]; then
    echo "CHECK got return Code[$ret_code], exiting..."
    exit 1
  else
    echo "CHECK success..."
  fi
}

function CHECK_EMPTY_VAR() {
  if [ $# -gt 1 ]; then
    echo "[ERROR] CHECK_EMPTY_VAR should only got ONE parameter..."
    exit 1
  fi
  echo "CHECK_EMPTY_VAR Runing with VAR[$1]..."
  if [ x"$1" != x ]; then
    echo "CHECK_EMPTY_VAR VAR[$1] not empty..."
    return 0
  else
    echo "CHECK_EMPTY_VAR VAR[$1] is empty..."
    exit 1
  fi
}

function CHECK_GT() {
  local left=$1
  local right=$2
  echo "CHECK_GT got LEFT[$left] and right[$right] to compare..."
  if [ $left -gt $right ]; then
    return 0
  else
    echo "CHECK_GT left is not greater than right"
    exit 1
  fi
}
