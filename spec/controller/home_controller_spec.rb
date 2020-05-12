require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "Post #create contact " do
    it "Create with valid data" do
      contact = { contact: { 
        first_name: "John",
        last_name: "Doe",
        email: "johndoe@abc.com",
        phone_number: "+918945324578",
        message: "I need product details." } }
      response = post(:contact, params: contact, format: :js)
      expect(assigns(:contact).errors.messages.blank?).to eq(true)
    end

    it "Create with blank data" do
      contact = { contact: { 
        first_name: "",
        last_name: "",
        email: "",
        phone_number: "",
        message: "" } }
      response = post(:contact, params: contact, format: :js)
      expect(assigns(:contact).errors.messages.blank?).to eq(false)
    end

    it "Create with invalid email" do
      contact = { contact: { 
        first_name: "John",
        last_name: "Doe",
        email: "abc.com",
        phone_number: "+918945324578",
        message: "I need product details." } }
      response = post(:contact, params: contact, format: :js)
      expect(assigns(:contact).errors.full_messages[0]).to eq('Email is invalid')
    end

    it "Create with invalid phone_number" do
      contact = { contact: { 
        first_name: "John",
        last_name: "Doe",
        email: "john@abc.com",
        phone_number: "dd45324578",
        message: "I need product details." } }
      response = post(:contact, params: contact, format: :js)
      expect(assigns(:contact).errors.full_messages[0]).to eq('Phone number is invalid')
    end
  end
end
