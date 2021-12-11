module ElevatorMedia
    class Streamer

        def initialize
            @yt_video = ""
        end
    
        def getContent
            @yt_video = "<iframe width=\"560\" height=\"315\" style=\"position: relative; left: 36%\" src=\"https://www.youtube.com/embed/V-_O7nl0Ii0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
        end
    end 
end