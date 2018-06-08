#!/usr/bin/env bash
set -e
set -u
set -o pipefail

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__proj_dir="$(dirname "$__dir")"
build_path="${__proj_dir}/build"

release_path="${__proj_dir}/release"
mkdir -p "${release_path}"

cp ${OPSPACK_NAME}.opspack "${release_path}"
