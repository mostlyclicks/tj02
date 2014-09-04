# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Graphs" do
    describe "Admin" do
      describe "graphs" do
        refinery_login_with :refinery_user

        describe "graphs list" do
          before do
            FactoryGirl.create(:graph, :name => "UniqueTitleOne")
            FactoryGirl.create(:graph, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.graphs_admin_graphs_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.graphs_admin_graphs_path

            click_link "Add New Graph"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Graphs::Graph.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Graphs::Graph.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:graph, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.graphs_admin_graphs_path

              click_link "Add New Graph"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Graphs::Graph.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:graph, :name => "A name") }

          it "should succeed" do
            visit refinery.graphs_admin_graphs_path

            within ".actions" do
              click_link "Edit this graph"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:graph, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.graphs_admin_graphs_path

            click_link "Remove this graph forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Graphs::Graph.count.should == 0
          end
        end

      end
    end
  end
end
