#!/bin/bash

pushd ../lemmy-stats-crawler
cargo run -- --max-crawl-depth 20 --start-instances lemmy.ml,wolfballs.com --exclude ds9.lemmy.ml,voyager.lemmy.ml,enterprise.lemmy.ml > stats.json
mv stats.json ../lemmy-instance-stats
popd
