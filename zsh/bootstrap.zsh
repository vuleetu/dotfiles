owned_zsh_dir=${0:A:h}
owned_plugins_dir=${owned_zsh_dir}/plugins
owned_autoload_dir=${owned_zsh_dir}/autoload

external_plugins_dir=${owned_zsh_dir}/ex-plugins
external_autoload_dir=${owned_zsh_dir}/ex-autoload

#initialize plugin
for s_plugin_dir in ${external_plugins_dir}/*(N); do
  fpath=($fpath $s_plugin_dir)
  ex_plugin=$s_plugin_dir/${s_plugin_dir:t}.plugin.zsh
  if [ -f $ex_plugin ]; then
    source $ex_plugin
  fi
done

for s_plugin_dir in ${owned_plugins_dir}/*(N); do
  fpath=($fpath $s_plugin_dir)
  owned_plugin=$s_plugin_dir/${s_plugin_dir:t}.plugin.zsh
  if [ -f $owned_plugin ]; then
    source $owned_plugin
  fi
done

#autoload all zsh script
for s in ${external_autoload_dir}/*.zsh(N); do
  source $s
done

for s in ${owned_autoload_dir}/*.zsh(N); do
  source $s
done

#add bin to PATH
PATH=$PATH:${owned_zsh_dir}/bin
export BOOTSTRAP_ZSH_DIR=$owned_zsh_dir

#cleanup
unset s
unset s_plugin_dir
unset owned_zsh_dir
unset owned_autoload_dir
unset owned_plugins_dir
unset owned_plugin
unset ex_autoload_dir
unset ex_plugin_dir
unset ex_plugin
