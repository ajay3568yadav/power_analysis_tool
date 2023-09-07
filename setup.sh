#!/bin/bash

pattern="cell (A"

matching_lines=$(grep -n "$pattern" asap7sc7p5t_AO_LVT_TT_nldm_211120.lib | cut -d ":" -f 1)


for line_number in $matching_lines; do

  include_line=$((line_number + 12))

  matching_line=$(sed -n "${line_number}p" asap7sc7p5t_AO_LVT_TT_nldm_211120.lib)

  desired_line=$(sed -n "${include_line}p" asap7sc7p5t_AO_LVT_TT_nldm_211120.lib)

  echo "Matching Line: $matching_line"
  echo "Desired Line: $desired_line"
done
