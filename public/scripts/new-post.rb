# Ruby script to generate the next file for writing today's post

puts "Enter the permalink you want"
name = gets.chomp

require 'date'

POSTS_DIR = "_posts"

file_name = "#{Date.today.iso8601}-#{name}.md"
file_path = "#{POSTS_DIR}/#{file_name}"

puts "CREATED #{file_name}"

filout = File.open(file_path, "w")

filout << "---
title: ''
date: #{Date.today.iso8601}
featured_image: '/images/#{name}/'
comments: true
tags:
categories:
excerpt:
---\n\n"

filout.close()

puts "TEMPLATE inserted in #{file_path}"

image_dir = "images/#{name}"
if Dir.exists? image_dir
    unless File.exists? "#{image_dir}/"
    end
else
    Dir.mkdir("#{image_dir}")
end

puts "IMAGE DIRECTORY created in #{image_dir}"
