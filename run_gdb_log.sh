filename="${1##*/}"
filename+=".txt"
set -x

./install/bin/riscv64-unknown-elf-gdb \
${1} \
--command=gdbscript -batch

cat gdb.txt | grep "=>" > $filename
#Extract Instruction only
#awk '{ for (i=1; i<=NF; ++i) { if ($i ~ ":$") print $(i+1) } }'
#Count
#tr ' ' '\12' | sort | uniq -c | sort -nr > result.txt