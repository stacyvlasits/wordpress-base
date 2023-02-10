# my-site-name

# How to
Instructions go here: how to start, how to set docker-compose env vars like HTTP_EXPOSED_PORT, etc.

# Issues
* `wp-content/uploads` is still created as owned by root; a one-time `sudo chown -R 33:33 wp-content` should fix this.