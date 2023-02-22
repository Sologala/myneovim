#/bin/bash

config_path=${HOME}/.config
neovim_config_path=${config_path}/nvim
packer_install_path=${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim
#packer_install_path=${HOME}/.local/share/nvim/site/pack/packer/opt/packer.nvim
cur_dir=$(pwd)
if [ ! -d ${config_path} ]; then
    echo No ${config_path} exist 
    exit
fi
echo 1. link config to ${neovim_config_path}
echo "ln -s ${cur_dir}/config ${neovim_config_path}"
if [ -d ${neovim_config_path} ]; then
	echo delete ${neovim_config_path}
	rm -r ${neovim_config_path}
fi
ln -s ${cur_dir}/config ${neovim_config_path}
echo 2. install packer.nvim
#mkdir -p ${packer_install_path}
echo "${packer_install_path}" 

rm -rf ${packer_install_path}
ln -s ${cur_dir}/config/plugin_offline/packer.nvim ${packer_install_path}
echo ln -s ${pwd}/config/plugin_offline/packer.nvim ${packer_install_path}

echo 3. install tmux.config
ln -s ${cur_dir}/tmux/tmux.conf ${HOME}/.tmux.conf 

echo install done!

rm ./install_plugins_manifests.txt
plugins_names=$(ls -l ${cur_dir}/config/plugin_offline/|awk '/^d/ {print $NF}') 
for i in ${plugins_names}
do
    echo use \"${cur_dir}/config/plugin_offline/$i\" >> install_plugins_manifests.txt
done
