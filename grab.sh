#!/bin/bash

# Copyright (C) 2018 Jason Raveling
# This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
# This is free software, and you are welcome to redistribute it
# under certain conditions; type `show c' for details.
#
# This script saves the content of pages in an array and names
# them using the array key as an HTML document.
#

outdir="${HOME}/public_html/";

declare -A results;
results=( ["governor"]="https://electionresults.sos.state.mn.us/Results/Governor/115?officeInElectionId=17115"
          ["us-senate"]="https://electionresults.sos.state.mn.us/Results/USSenate/115?officeInElectionId=16971%2C16972"
          ["us-rep-district7"]="https://electionresults.sos.state.mn.us/Results/USRepresentative/115?officeinelectionid=16979&districtid=562"
          ["us-rep-district8"]="https://electionresults.sos.state.mn.us/Results/USRepresentative/115?officeinelectionid=16980&districtid=563"
          ["attorney-general"]="https://electionresults.sos.state.mn.us/Results/AttorneyGeneral/115?id=st&officeInElectionId=17118"
          ["secretary-of-state"]="https://electionresults.sos.state.mn.us/Results/SecretaryOfState/115?officeInElectionId=17116"
          ["state-auditor"]="https://electionresults.sos.state.mn.us/Results/StateAuditor/115?officeInElectionId=17117"
          ["state-representatives"]="https://electionresults.sos.state.mn.us/Results/StateRepresentative/115?districttype=LG"
          ["municipal-races-brainerd"]="https://electionresults.sos.state.mn.us/Results/MunicipalRaces/115?districtid=07300"
          ["municipal-races-baxter"]="https://electionresults.sos.state.mn.us/Results/MunicipalRaces/115?districtid=04042"
          ["municipal-races-bemidji"]="https://electionresults.sos.state.mn.us/Results/MunicipalRaces/115?districtid=05068"
          ["school-races-district-181"]="https://electionresults.sos.state.mn.us/Results/SchoolDistrictRaces/115?districtid=52"
          ["school-races-district-31"]="https://electionresults.sos.state.mn.us/Results/SchoolDistrictRaces/115?districtid=14"
          ["county-races-crow-wing"]="https://electionresults.sos.state.mn.us/Results/CountyRaces/115?districtid=18"
          ["county-races-itasca"]="https://electionresults.sos.state.mn.us/Results/CountyRaces/115?districtid=31"
          ["county-races-hubbard"]="https://electionresults.sos.state.mn.us/Results/CountyRaces/115?districtid=29"
          ["county-races-aitkin"]="https://electionresults.sos.state.mn.us/Results/CountyRaces/115?districtid=1"
          ["county-races-beltrami"]="https://electionresults.sos.state.mn.us/Results/CountyRaces/115?districtid=4"
)

for key in "${!results[@]}"; do
    curl ${results[$key]} > "${outdir}${key}.html";
    echo "<h2>" $(date) "</h2>" >> "${outdir}${key}.html"
done;
