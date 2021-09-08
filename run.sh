#!/bin/bash

pushd ../lemmy-stats-crawler
cargo run -- --start-instances lemmy.ml --exclude ds9.lemmy.ml,voyager.lemmy.ml,enterprise.lemmy.ml,lemmyfreedom.xyz > stats.json
mv stats.json ../lemmy-instance-stats
popd
