#!/bin/bash
while true; do
  DSTAMP=$(date +%Y%m%d.%H%M.%S)
  echo "Snapshot at '${DSTAMP}'.."
  git add Players Worlds
  git commit -am "auto-snapshot ${DSTAMP}" &&
      echo "## Got it!  Snapshot saved" ||
          echo "# done"
  sleep 1
done
