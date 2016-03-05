# Blerg

This blog is a sample app for my book [Pragmatic Rails Deployment on AWS](http://pragmaticrailsdeployment.com). You'll learn how to go from your local dev environment to a production-ready (load balanced, cached, backed up, CDN-ed) app live on Amazon Web Services in a few hours.

This code is a functioning blog that, while awesome, probably won't do you much good if you're not following along with the book. Unless you happen to want a barebones blogging platform, then by all means enjoy!

## Setup

Install required gems:

    bundle install

Setup and seed the database:

    bin/rails db:setup

And start the server:

    bin/rails s

Head to [http://localhost:3000](http://localhost:3000) and you should be ready to go. Seeding the database creats a user that can create blog posts: Email: _owner@blerg.com_ Password: _blerg_ There are a couple example blog posts and comments as well.

There's no interface for creating new users so you'll need to do that in the database or from a `bin/rails console`.

## Branches

There are several branches in the repo that represent snapshots of the app as it is being prepared for a production deployment. We make these changes throughout the book leading up to our first deployment. Then we make a few more to optimize performance once we're live.

To get right to the final ready-to-deploy version of the app checkout the `final` branch.
