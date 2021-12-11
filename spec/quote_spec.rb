require "rails_helper"

RSpec.describe Quote, :type => :model do
    subject {
        Quote.new(
            company_name: "test",
            email: "test",
            phone_number: "111",
            building_type: "residential",
            apartments: "1",
            floors: "1",
            basements: "0",
            elevators: "1",
            companies: "1",
            parking_spots: "1",
            corporations: "1",
            maximum_occupancy: "1",
            business_hours: "1"
        )
    }
    context "is" do
        it "valid if required fields are filled out for residential" do
            expect(subject.company_name).to_not be_nil
            expect(subject.email).to_not be_nil
            expect(subject.building_type).to eq("residential")
            expect(subject.apartments).to be > 0.to_s
            expect(subject.floors).to be > 0.to_s
            expect(subject.basements).to eq(0.to_s).or be > 0.to_s
        end
        it "valid if required fields are filled out for corporate" do
            subject.building_type = "corporate"
            expect(subject.company_name).to_not be_nil
            expect(subject.email).to_not be_nil
            expect(subject.building_type).to eq("corporate")
            expect(subject.floors).to be > 0.to_s
            expect(subject.basements).to eq(0.to_s).or be > 0.to_s
            expect(subject.parking_spots).to be > 0.to_s
            expect(subject.corporations).to eq(0.to_s).or be > 0.to_s
            expect(subject.maximum_occupancy).to eq(0.to_s).or be > 0.to_s
        end
        it "valid if required fields are filled out for commercial" do
            subject.building_type = "commercial"
            expect(subject.company_name).to_not be_nil
            expect(subject.email).to_not be_nil
            expect(subject.building_type).to eq("commercial")
            expect(subject.floors).to be > 0.to_s
            expect(subject.basements).to eq(0.to_s).or be > 0.to_s
            expect(subject.companies).to eq(0.to_s).or be > 0.to_s
            expect(subject.parking_spots).to be > 0.to_s
            expect(subject.elevators).to eq(0.to_s).or be > 0.to_s
        end
        it "valid if required fields are filled out for hybrid" do
            subject.building_type = "hybrid"
            expect(subject.company_name).to_not be_nil
            expect(subject.email).to_not be_nil
            expect(subject.building_type).to eq("hybrid")
            expect(subject.floors).to be > 0.to_s
            expect(subject.basements).to eq(0.to_s).or be > 0.to_s
            expect(subject.companies).to eq(0.to_s).or be > 0.to_s
            expect(subject.parking_spots).to be > 0.to_s
            expect(subject.maximum_occupancy).to eq(0.to_s).or be > 0.to_s
            expect(subject.business_hours).to eq(0.to_s).or be > 0.to_s
        end
        it "not valid if email does not contain @ sign" do
            expect(subject.email).to_not include("@")
        end
    end
end