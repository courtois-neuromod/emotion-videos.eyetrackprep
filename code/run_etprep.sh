#!/bin/bash

# activate project's virtual env
source /data/neuromod/projects/eyetracking_bids/et_venv/bin/activate

cd eyetrackprep/eyetrackprep


RAW_DIR="/unf/eyetracker/neuromod/emotionsvideos/sourcedata"
BIDS_DIR="/data/neuromod/projects/eyetracking_bids/bids_repos/emotion-videos"
DERIV_DIR="/data/neuromod/projects/eyetracking_bids/deriv_repos/emotion-videos.eyetrackprep"

python workflow.py "${RAW_DIR}"  "${BIDS_DIR}"  --deriv_dir="${DERIV_DIR}"  --export_plots --correct_drift
