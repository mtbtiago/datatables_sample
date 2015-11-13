module ApplicationHelper
  # major: on every iteration release
  # minor: when require migrations
  # release: increment in every new feature, reset after migrations
  # build: never reset, increment in every deployment
  VERSION = '0.0.0.1'
end
