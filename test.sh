#!/usr/bin/bash
# A test for using a better table at oc.sh

# Array for Presets
#presets=(None Modest Medium High Turbo Pi2)
#for mode in ${presets[@]}; do echo $mode; done

# Array for Mode
#none=(700 250 400 0)
#for clock in ${none[@]}; do echo $clock; done
conf=/boot/config.txt

# Current settings - $1 -> arm_freq, $2 -> 0 ($presets)
function get_config() { 
  #[[ -z $(sed -n "s/$1=// p" $conf) ]] ||
  #a=$(sed -n "s/$1=// p" $conf); a=${a:-$(echo ${presets[0]} | cut -f$2 -d' ')}
  #return $a
  sed -n "s/$1=// p" $2
}

arm=$(get_config arm_freq $conf); arm=$(printf "\e[32m%d\e[m" ${arm:-700})
cor=$(get_config core_freq $conf); cor=$(printf "\e[32m%d\e[m" ${cor:-250})
sdr=$(get_config sdram_freq $conf); sdr=$(printf "\e[32m%d\e[m" ${sdr:-400})
ov=$(get_config over_voltage $conf); ov=$(printf "\e[32m%d\e[m" ${oc:-0})

# A nested array in dictionary: Presets -> Mode -> Clock
# arm_freq:1 core_freq:2 sdram_freq:3 overvolt:4 mode:5
presets=(
  "700 250 400 0 None"
  "800 300 400 0 Modest"
  "900 333 450 2 Medium"
  "950 450 450 6 High"
  "1000 500 600 6 Turbo"
  "1000 500 500 2 Pi2"
  "$arm $cor $sdr $ov Current"
)

#for i in "arm_freq 1" "core_freq 2" "sdram_freq 3" "overvolt 4"; do
#  x=$(get_config $i); x=${x:-$(echo ${presets[0]}|cut -f${i[1]} -d' ')}
#  echo $x
#done


# Show current settings
n=2
printf "
 ┌──────────┬───────────────┬───────────────┬───────────────┬───────────────┐
 │ Presets  │   arm_freq    │  core_freq    │  sdram_freq   │   overclock   │
 ├──────────┼───────────────┼───────────────┼───────────────┼───────────────┤\n"
for (( x=0; x < ${#presets[@]}; x++ )); do
  printf ' │ %-7s %s │' $(echo ${presets[$x]}|cut -f 5 -d' ')
  for y in $(echo ${presets[$x]}|cut -f-4 -d' '); do printf '%14s │' $y; done
  printf '\n'
done
printf " └──────────┴───────────────┴───────────────┴───────────────┴───────────────┘\n"

#head=$(printf -- '─%.s' {1..77})  # heading ─
#printf " ┌$head┐\n │ Presets │\tarm_freq    │\tcore_freq    │\t sdram_freq   │\t  overclock    │\n"; echo " │$head│"

#for i in $(echo ${presets[$n]} | cut -f-4 -d' '); do printf '%12d | ' $i; done
#echo ${presets[0]} | cut -f -4 -d' '
#for i in ${presets[@]}; do echo $i; done
