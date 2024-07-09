#!/usr/bin/env sh
scripts/build.sh python_src
scripts/build.sh python_src_alpine
scripts/build.sh frozen
scripts/build.sh frozen_alpine
scripts/build.sh frozen_static
scripts/build.sh frozen_static_alpine
scripts/build.sh frozen_static_alpine_on_ubuntu
scripts/build.sh frozen_static_debian_on_alpine


echo 'python_src'
scripts/check.sh ru_RU.UTF-8 python_src
echo 'python_src_alpine'
scripts/check.sh ru_RU.UTF-8 python_src_alpine
echo 'frozen'
scripts/check.sh ru_RU.UTF-8 frozen
echo 'frozen_alpine'
scripts/check.sh ru_RU.UTF-8 frozen_alpine
echo 'frozen_static'
scripts/check.sh ru_RU.UTF-8 frozen_static
echo 'frozen_static_alpine'
scripts/check.sh ru_RU.UTF-8 frozen_static_alpine
echo 'frozen_static_alpine_on_ubuntu'
scripts/check.sh ru_RU.UTF-8 frozen_static_alpine_on_ubuntu
echo 'frozen_static_debian_on_alpine'
scripts/check.sh ru_RU.UTF-8 frozen_static_debian_on_alpine
