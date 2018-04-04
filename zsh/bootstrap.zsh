owned_zsh_dir=${0:A:h}
owned_plugins_dir=${owned_zsh_dir}/plugins
owned_autoload_dir=${owned_zsh_dir}/autoload

#initialize plugin
for owned_plugin_dir in ${owned_plugins_dir}/*; do
  fpath=($fpath $owned_plugin_dir)
  owned_plugin=$owned_plugin/${owned_plugin:t}.plugin.zsh
  if [ -f $owned_plugin ]; then
    source $owned_plugin
  fi
done

#autoload all zsh script
for s in ${owned_autoload_dir}/*.zsh; do
  source $s
done

#add bin to PATH
PATH=$PATH:${owned_zsh_dir}/bin
