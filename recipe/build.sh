set -ex
SHORT_OS_STR=$(uname -s)

if [[ "${target_platform}" == linux-* ]]; then
  make OS=LINUX
else
  make OS=MACOSX
fi
mkdir -p ${PREFIX}/bin
cp teensy_loader_cli ${PREFIX}/bin/.
