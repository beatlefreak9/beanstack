beanstack
=========

Video hosting for the free world

## What it is

beanstack is one half of a framework designed to decentralize video hosting and sharing on the web. It intends to follow the UNIX philosophy of "do one thing, and do it well." The purpose of beanstack is simple: to host and stream videos to other websites.

## Prerequisites

*Ruby (~>2.1.2)
*Bundler (~>1.6.3)
*PostgreSQL (or the knowledge to change beanstack to another database provider, see config/database.yml)
*ffmpeg with Ogg Vorbis and Theora codecs enabled

## Setup

Fork/clone the repository, and from within it:

`bundle install`
`bundle exec rake db:create`
`bundle exec rake db:schema:load`
`bundle exec rails server`

This should bring up your very own instance of beanstack.

## Questions? Comments?

Submit an issue or send me an email, I'd love to hear what you have to say!
