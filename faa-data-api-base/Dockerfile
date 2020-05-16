# Extend from the official Elixir image
FROM elixir:1.10.3

ENV MIX_ENV=prod REPLACE_OS_VARS=true

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force
RUN mix local.rebar --force

RUN apt-get update && apt-get upgrade -y
RUN apt-get install ghostscript pdftk -y

VOLUME [ "/faa-chart-data" ]
