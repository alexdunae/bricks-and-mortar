## Development

In terminal:

    cd ~/Sites/bricksandmortar
    bundle
    bundle exec middleman server

Preview the site at [localhost:4567](http://localhost:4567/).

Everything relating to the site in progress is in the `source` directory.  The `build` directory is created before uploading the live site and shouldn't ever be edited directly.

## Deployment

Make sure everything is looking tight.  Check a few links.  Then, from terminal:

    bundle exec middleman deploy
