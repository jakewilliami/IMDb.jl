__all__ = ["IMDb", "IMDbError", "Movie", "Person", "Character", "Company", "available_access_systems"]

# URLs of the main pages for movies, persons, characters and queries.
imdbURL_base = 'https://www.imdb.com/'

# NOTE: the urls below will be removed in a future version.
#       please use the values in the 'urls' attribute
#       of the IMDbBase subclass instance.
# http://www.imdb.com/title/
imdbURL_movie_base = "$(imdbURL_base)title/"
# http://www.imdb.com/title/tt%s/
imdbURL_movie_main = imdbURL_movie_base * "tt%s/"
# http://www.imdb.com/name/
imdbURL_person_base = "$(imdbURL_base)name/"
# http://www.imdb.com/name/nm%s/
imdbURL_person_main = imdbURL_person_base * "nm%s/"
# http://www.imdb.com/character/
imdbURL_character_base = "$(imdbURL_base)character/"
# http://www.imdb.com/character/ch%s/
imdbURL_character_main = imdbURL_character_base * "ch%s/"
# http://www.imdb.com/company/
imdbURL_company_base = "$(imdbURL_base)company/"
# http://www.imdb.com/company/co%s/
imdbURL_company_main = imdbURL_company_base * "co%s/"
# http://www.imdb.com/keyword/%s/
imdbURL_keyword_main = imdbURL_base * "search/keyword/?keywords=%s"
# http://www.imdb.com/chart/top
imdbURL_top250 = imdbURL_base * "chart/top"
# http://www.imdb.com/chart/bottom
imdbURL_bottom100 = imdbURL_base * "chart/bottom"
# http://www.imdb.com/find?%s
imdbURL_find = imdbURL_base * "find?%s"
# http://www.imdb.com/list/
imdbURL_list_base = imdbURL_base * "list/"

 """
 A case-sensitive parser for configuration files.
 """
struct ConfigParserWithCase
    defaults
    conf_file
    
    # constructor function
    """
    Initialize the parser.
        *defaults* -- defaults values.
        *confFile* -- the file (or list of files) to parse.
    """
    function ConfigParserWithCase(defaults=nothing, conf_file=nothing, args...; kwds...)
        # super(configparser.ConfigParser, self).__init__(defaults=defaults)
        
        if isnothing(conf_file)
            dot_file_name = "." * conf_file_name
            # Current and home directory
            conf_file = [
                joinpath(pwd(), conf_file_name),
                joinpath(pwd(), dot_file_name),
                joinpath(homedir(), conf_file_name),
                joinpath(homedir(), dot_file_name)
            ]
            
            if Sys.iswindows()
            else
            end
        end
    end
end

"""
Return an instance of the appropriate class.
The accessSystem parameter is used to specify the kind of the preferred access system.
"""
function IMDb(access_system=nothing, arguments...; keywords...)
    if isnothing(access_system) || access_system ∈ ["auto", "config"]
        try
            cfg_file =
        catch
        end
    end
end
