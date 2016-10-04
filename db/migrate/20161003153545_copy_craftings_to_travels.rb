class CopyCraftingsToPosts < ActiveRecord::Migration
  def self.up
  	execute "INSERT INTO posts
(title, description, image, created_at, updated_at)
SELECT
title, description, image, created_at, updated_at FROM craftings"
  end

  def self.down
  	execute "INSERT INTO posts
(title, description, image, created_at, updated_at)
SELECT
title, description, image, created_at, updated_at FROM craftings"
  end
end
