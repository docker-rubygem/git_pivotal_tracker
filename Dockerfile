FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install git_pivotal_tracker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-bug"]
CMD ["--help"]
