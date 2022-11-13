require 'pry'
class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        update(attributes)
    end

    def self.update_all_titles(attributes)

        self.update(title: attributes)
    end 

    def self.delete_by_id(id)
        self.destroy(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end