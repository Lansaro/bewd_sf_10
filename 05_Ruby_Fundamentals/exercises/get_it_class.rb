require 'pry'
require 'rest-client'
require 'json'

def connect_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def finding(response)
  stories = response["data"]["children"]
  return stories
end

def printing(stories)
  stories.each do |story|
    story_hash(story["data"])
  end
end

def story_hash(story)
  {title: story["title"], category: story["subreddit"], upvotes: story["ups"]}
end

url = "reddit.com/.json"
response = connect_api(url)
stories = printing(stories)
printing(stories)
