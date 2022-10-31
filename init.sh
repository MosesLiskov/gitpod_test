#!/bin/bash
# Install Julia version 1.8.2

wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz
tar -xzf julia-1.8.2-linux-x86_64.tar.gz
sudo mv julia-1.8.2/ /opt/
sudo ln -s /opt/julia-1.8.2/bin/julia /usr/local/bin/julia
rm julia-1.8.2-linux-x86_64.tar.gz
julia installMEV.jl
sudo cp verify.sh /usr/local/bin/verify
sudo cp verifyurl.sh /usr/local/bin/verifyurl
sudo cp verifypilot.sh /usr/local/bin/verifypilot
sudo chmod a+x /usr/local/bin/verify /usr/local/bin/verifyurl /usr/local/bin/verifypilot
echo 'Welcome to the MITRE Verifier gitpod.'
echo 'You can run the verifier yourself on our sample data.'
echo 'Enter "verify example".'
echo 'You can also fetch and run the election record from the pilot election.'
echo 'Enter "verifypilot".'
echo 'Alternately, if you have a URL for an election record to verify, Enter "verifyurl <url>".'
echo 'The verifier will finish its output with "true" if no errors are found in the record.'
