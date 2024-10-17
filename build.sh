pnpm install
pnpm surfer update
pnpm surfer ci --brand twilight --display-version 1.0.1-t.10
pnpm surfer download
cd engine
./mach --no-interactive bootstrap --application-choice browser --no-system-changes
cd ..
pnpm surfer import --verbose
sh ./scripts/update-en-US-packs.sh
sh .github/workflows/src/release-build.sh
pnpm package
