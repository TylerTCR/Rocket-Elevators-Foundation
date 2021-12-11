require 'ElevatorMedia'

RSpec.describe ElevatorMedia::Streamer do
    context "with the content" do
        it "displays media in the banner" do
            streamer = ElevatorMedia::Streamer.new
            expect(streamer.getContent).to eq("<iframe width=\"560\" height=\"315\" style=\"position: relative; left: 36%\" src=\"https://www.youtube.com/embed/V-_O7nl0Ii0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>")
        end
    end
    context "with no content" do
        it "displays nothing in the banner" do
            streamer = ElevatorMedia::Streamer.new
            expect(streamer.getContent).to_not eq("")
        end
    end
end