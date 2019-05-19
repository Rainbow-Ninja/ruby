class Artist
    attr_reader :name :albums

    def initialize
        @albums = []

    end

    def albums
        @albums
    end

    def set_albums(value)
        @albums.push(value)
    end

end

class Album < Artist
    
    def initialise(title, release_date, songs)
        @title = title
        @release_date = release_date
        @songs = []
    end

    def songs(song)
        @songs.push(song)
    end
end

class Song < Album
    attr_reader :title :duration :genre

    def initialize(title, duration, genre)
        @title = title
        @duration = duration
        @genre = genre
    end
end