#
#   premisse:
#   each wire have one name,
#   each pin have one or more wires,
#   each wire connect two or more pins,
#   each unit have two or more pins,

#   format:,
#   unit, pin, wire, obs,
#
#   notes:
#
#   one line for each wire nameon pin,
#   use obs for datasheet use of pin,
#   use 0V0, for VSS, gnd
#   use 3V3, for VDD,
#   use 5V5, for VCC,
#
cat $1 | \
sort -k 3 -t',' | \
sed -e '/^[ ]*$/d' | \
tee $1.pts | \
grep -v '# ' | grep -v ' nc,' | \
cat -n > $1.lst

