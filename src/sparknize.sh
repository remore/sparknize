#!/bin/bash
# usage:
# echo -e "date,sales_amount\n2013-06-12,4" | /bin/bash sparknize.sh Sales_Amount_Report 600

function sv2spark(){
  local TITLE="NO NAME"
  local HEIGHT=600
  
  # validate
  case $# in
    0)
      ;;
    1)
      TITLE=$1
      ;;
    2)
      TITLE=$1
      HEIGHT=$2
      ;;
    *)
      echo "sv2spark-ERROR: too much argument is passed."
      exit 1
  esac
  
  # receive standard input
  local DATA=()
  while read f; do
    DATA+=("$f\\\\n")
  done
  
  # instantiate spark graph
  local FILEPATH=`readlink -f $0`
  cat `dirname $FILEPATH`/template.html | sed -e "s/@___DATA___@/`echo -e "${DATA[@]}"`/g" | sed -e "s/@___TITLE___@/${TITLE}/g" | sed -e "s/@___STYLE___@/height: ${HEIGHT}px;/g" 
  
  exit 0
}

sv2spark $*
