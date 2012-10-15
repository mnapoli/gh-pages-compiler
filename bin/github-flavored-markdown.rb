#!/usr/bin/env ruby

# Processor for Github flavored markdown, inspired from:
# https://gist.github.com/1300939
# (by Ralph von der Heyden http://github.com/ralph, http://twitter.com/ralph, http://www.rvdh.de)
#
# Usage:
# github-flavored-markdown.rb document.md

require 'rubygems'
require 'redcarpet'

def markdown(text)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, optionize([
    :fenced_code_blocks,
    :no_intra_emphasis,
    :tables,
    :autolink,
    :strikethrough,
    :lax_spacing,
    :space_after_headers
  ]))
  markdown.render(text)
end

def optionize(options)
  options.inject({}) { |memo, option| memo[option] = true; memo }
end

puts markdown(ARGF.read)
