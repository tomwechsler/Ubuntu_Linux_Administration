apt search python3

apt search python3 | wc -l

apt search python3 --names -only | wc -l

apt search '^python3' --names-only | wc -l

apt search '^python3$' --names-only | wc -l



As a simple demonstration we can search the package database with apt. We can drill down to just names, excluding
the descriptions. The meta character ^ means the line starts with, and $ means the end lines with.