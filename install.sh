#!/bin/bash
src_dir="$(pwd)"  # 当前目录
dst_dir="/home/deck/homebrew/plugins/$(basename "$src_dir")"  # 目标目录，与源目录同名
sudo mkdir -p $dst_dir

# 使用cp命令进行复制
sudo cp -Rf ${src_dir}/dist ${src_dir}/backend ${src_dir}/bin ${src_dir}/README.md ${src_dir}/*.json ${src_dir}/main.py ${src_dir}/LICENSE ${dst_dir}/.
sudo chown -R deck:deck ~/homebrew/plugins/
sudo systemctl restart plugin_loader.service
