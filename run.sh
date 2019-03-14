#!/bin/bash

base_wrk_dir="/home/joaovperin/Containers/workdir"

# Ensures user provided a container name
if [[ ! $1 ]]; then
	echo "Please input a container name!" && exit -1
fi

ct_name=$1
local_wrk_dir="${base_wrk_dir}/${ct_name}"

# If the working directory does not exist
if [[ ! -d "$local_wrk_dir" ]]; then
   echo "Creating directory $local_wrk_dir..."
   mkdir $local_wrk_dir
   chown joaovperin $local_wrk_dir
fi

cmd_exec=$ct_name

# If interactive, then open bash
if [[ "$2" = '-it' ]]; then
	cmd_exec="-it $ct_name bash"
	shift
fi

# Concat all the additional params as command prefix
cmd_pref=" $2 $3 $4 $5 $6 $7 $8 "

echo "Starting $ct_name container... "

echo "-> docker run -p 3000:300 -v ${local_wrk_dir}:/workdir ${cmd_pref} ${cmd_exec}"
docker run -p 3000:3000 -v ${local_wrk_dir}:/workdir ${cmd_pref} ${cmd_exec}

echo "End."

