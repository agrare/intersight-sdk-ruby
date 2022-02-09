=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IntersightClient::HclCompatibilityStatusAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe IntersightClient::HclCompatibilityStatusAllOf do
  let(:instance) { IntersightClient::HclCompatibilityStatusAllOf.new }

  describe 'test an instance of HclCompatibilityStatusAllOf' do
    it 'should create an instance of HclCompatibilityStatusAllOf' do
      expect(instance).to be_instance_of(IntersightClient::HclCompatibilityStatusAllOf)
    end
  end
  describe 'test attribute "class_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["hcl.CompatibilityStatus"])
      # validator.allowable_values.each do |value|
      #   expect { instance.class_id = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "object_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["hcl.CompatibilityStatus"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "profile_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "request_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FillSupportedVersions", "CheckCompatibility", "GetRecommendedDrivers"])
      # validator.allowable_values.each do |value|
      #   expect { instance.request_type = value }.not_to raise_error
      # end
    end
  end

end
