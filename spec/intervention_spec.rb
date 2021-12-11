require "rails_helper"

RSpec.describe Intervention, :type => :model do
    subject {
        Intervention.new(
            customer_id: 1,
            user_id: 1,
            building_id: 1,
            column_id: 1,
            battery_id: 1,
            elevator_id: 1,
            report: "0",
            employee_id: 1
        )
    }
    context "is" do
        it "valid with valid attributes" do
            expect(subject).to be_valid
        end
        it "not valid without a customer" do
            subject.customer_id = nil
            expect(subject).to_not be_valid
        end
        it "not valid without a building" do
            subject.building_id = nil
            expect(subject).to_not be_valid
        end
        it "not valid without a battery" do
            subject.battery_id = nil
            expect(subject).to_not be_valid
        end
    end
end