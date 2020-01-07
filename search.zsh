function kl-s() {
  if [ -z "$1" ]; then
    echo "No search term defined"
    return
  fi
  if [ -z "$2" ]; then
    kl get pod | grep $1
  else
    kl get $1 | grep $2
  fi
}
function kd-s() {
  if [ -z "$2" ]; then
    kd get pod | grep $1
  else
    kd get $1 | grep $2
  fi
}
function ks-s() {
  if [ -z "$2" ]; then
    ks get pod | grep $1
  else
    ks get $1 | grep $2
  fi
}
function kp-s() {
  if [ -z "$2" ]; then
    kp get pod | grep $1
  else
    kp get $1 | grep $2
  fi
}
