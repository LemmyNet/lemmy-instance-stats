#!/bin/bash

pushd ../lemmy-stats-crawler
cargo run -- --start-instances lemmy.ml > stats.json
mv stats.json ../lemmy-instance-stats
popd
