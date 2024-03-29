# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Surveys" do
    describe "Admin" do
      describe "surveys" do
        refinery_login_with :refinery_user

        describe "surveys list" do
          before do
            FactoryGirl.create(:survey, :name => "UniqueTitleOne")
            FactoryGirl.create(:survey, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.surveys_admin_surveys_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.surveys_admin_surveys_path

            click_link "Add New Survey"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Surveys::Survey.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Surveys::Survey.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:survey, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.surveys_admin_surveys_path

              click_link "Add New Survey"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Surveys::Survey.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:survey, :name => "A name") }

          it "should succeed" do
            visit refinery.surveys_admin_surveys_path

            within ".actions" do
              click_link "Edit this survey"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:survey, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.surveys_admin_surveys_path

            click_link "Remove this survey forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Surveys::Survey.count.should == 0
          end
        end

      end
    end
  end
end
