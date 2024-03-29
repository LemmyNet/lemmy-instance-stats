#!/bin/bash

pushd ../lemmy-stats-crawler
cargo run -- --start-instances $(cat ../lemmy-instance-stats/recommended-instances.csv) --exclude lemmy.glasgow.social,ds9.lemmy.ml,voyager.lemmy.ml,enterprise.lemmy.ml > stats.json
mv stats.json ../lemmy-instance-stats
popd
