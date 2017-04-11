# News Feeder
Consumes news articles to populate data for the news feed.

### Development Setup
    bin/build                 # builds containers
    bin/setup                 # prepares DB
    docker-compose up feeder  # starts containers

### Test Setup
    bin/setup test  # prepares DB for test env
    bin/test        # runs tests

#### Notes
Articles:  
For consideration:
* upvote_downvote_count
* most_read
* bookmark_status
