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

# Unit tests for IntersightClient::NetworkApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkApi' do
  before do
    # run before each test
    @api_instance = IntersightClient::NetworkApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkApi' do
    it 'should create an instance of NetworkApi' do
      expect(@api_instance).to be_instance_of(IntersightClient::NetworkApi)
    end
  end

  # unit tests for get_network_element_by_moid
  # Read a &#39;network.Element&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param [Hash] opts the optional parameters
  # @return [NetworkElement]
  describe 'get_network_element_by_moid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_element_list
  # Read a &#39;network.Element&#39; resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false).
  # @option opts [String] :orderby Determines what properties are used to sort the collection of resources.
  # @option opts [Integer] :top Specifies the maximum number of resources to return in the response.
  # @option opts [Integer] :skip Specifies the number of resources to skip in the response.
  # @option opts [String] :select Specifies a subset of properties to return.
  # @option opts [String] :expand Specify additional attributes or related resources to return in addition to the primary resources.
  # @option opts [String] :apply Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The \&quot;$apply\&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are \&quot;aggregate\&quot; and \&quot;groupby\&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set.
  # @option opts [Boolean] :count The $count query specifies the service should return the count of the matching resources, instead of returning the resources.
  # @option opts [String] :inlinecount The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response.
  # @option opts [String] :at Similar to \&quot;$filter\&quot;, but \&quot;at\&quot; is specifically used to filter versioning information properties for resources to return. A URI with an \&quot;at\&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section.
  # @option opts [String] :tags The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key.
  # @return [NetworkElementResponse]
  describe 'get_network_element_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_element_summary_by_moid
  # Read a &#39;network.ElementSummary&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param [Hash] opts the optional parameters
  # @return [NetworkElementSummary]
  describe 'get_network_element_summary_by_moid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_element_summary_list
  # Read a &#39;network.ElementSummary&#39; resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false).
  # @option opts [String] :orderby Determines what properties are used to sort the collection of resources.
  # @option opts [Integer] :top Specifies the maximum number of resources to return in the response.
  # @option opts [Integer] :skip Specifies the number of resources to skip in the response.
  # @option opts [String] :select Specifies a subset of properties to return.
  # @option opts [String] :expand Specify additional attributes or related resources to return in addition to the primary resources.
  # @option opts [String] :apply Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The \&quot;$apply\&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are \&quot;aggregate\&quot; and \&quot;groupby\&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set.
  # @option opts [Boolean] :count The $count query specifies the service should return the count of the matching resources, instead of returning the resources.
  # @option opts [String] :inlinecount The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response.
  # @option opts [String] :at Similar to \&quot;$filter\&quot;, but \&quot;at\&quot; is specifically used to filter versioning information properties for resources to return. A URI with an \&quot;at\&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section.
  # @option opts [String] :tags The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key.
  # @return [NetworkElementSummaryResponse]
  describe 'get_network_element_summary_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_fc_zone_info_by_moid
  # Read a &#39;network.FcZoneInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param [Hash] opts the optional parameters
  # @return [NetworkFcZoneInfo]
  describe 'get_network_fc_zone_info_by_moid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_fc_zone_info_list
  # Read a &#39;network.FcZoneInfo&#39; resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false).
  # @option opts [String] :orderby Determines what properties are used to sort the collection of resources.
  # @option opts [Integer] :top Specifies the maximum number of resources to return in the response.
  # @option opts [Integer] :skip Specifies the number of resources to skip in the response.
  # @option opts [String] :select Specifies a subset of properties to return.
  # @option opts [String] :expand Specify additional attributes or related resources to return in addition to the primary resources.
  # @option opts [String] :apply Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The \&quot;$apply\&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are \&quot;aggregate\&quot; and \&quot;groupby\&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set.
  # @option opts [Boolean] :count The $count query specifies the service should return the count of the matching resources, instead of returning the resources.
  # @option opts [String] :inlinecount The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response.
  # @option opts [String] :at Similar to \&quot;$filter\&quot;, but \&quot;at\&quot; is specifically used to filter versioning information properties for resources to return. A URI with an \&quot;at\&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section.
  # @option opts [String] :tags The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key.
  # @return [NetworkFcZoneInfoResponse]
  describe 'get_network_fc_zone_info_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_vlan_port_info_by_moid
  # Read a &#39;network.VlanPortInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param [Hash] opts the optional parameters
  # @return [NetworkVlanPortInfo]
  describe 'get_network_vlan_port_info_by_moid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_network_vlan_port_info_list
  # Read a &#39;network.VlanPortInfo&#39; resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter criteria for the resources to return. A URI with a $filter query option identifies a subset of the entries from the Collection of Entries. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the $filter option. The expression language that is used in $filter queries supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false).
  # @option opts [String] :orderby Determines what properties are used to sort the collection of resources.
  # @option opts [Integer] :top Specifies the maximum number of resources to return in the response.
  # @option opts [Integer] :skip Specifies the number of resources to skip in the response.
  # @option opts [String] :select Specifies a subset of properties to return.
  # @option opts [String] :expand Specify additional attributes or related resources to return in addition to the primary resources.
  # @option opts [String] :apply Specify one or more transformation operations to perform aggregation on the resources. The transformations are processed in order with the output from a transformation being used as input for the subsequent transformation. The \&quot;$apply\&quot; query takes a sequence of set transformations, separated by forward slashes to express that they are consecutively applied, i.e. the result of each transformation is the input to the next transformation. Supported aggregation methods are \&quot;aggregate\&quot; and \&quot;groupby\&quot;. The **aggregate** transformation takes a comma-separated list of one or more aggregate expressions as parameters and returns a result set with a single instance, representing the aggregated value for all instances in the input set. The **groupby** transformation takes one or two parameters and 1. Splits the initial set into subsets where all instances in a subset have the same values for the grouping properties specified in the first parameter, 2. Applies set transformations to each subset according to the second parameter, resulting in a new set of potentially different structure and cardinality, 3. Ensures that the instances in the result set contain all grouping properties with the correct values for the group, 4. Concatenates the intermediate result sets into one result set. A groupby transformation affects the structure of the result set.
  # @option opts [Boolean] :count The $count query specifies the service should return the count of the matching resources, instead of returning the resources.
  # @option opts [String] :inlinecount The $inlinecount query option allows clients to request an inline count of the matching resources included with the resources in the response.
  # @option opts [String] :at Similar to \&quot;$filter\&quot;, but \&quot;at\&quot; is specifically used to filter versioning information properties for resources to return. A URI with an \&quot;at\&quot; Query Option identifies a subset of the Entries from the Collection of Entries identified by the Resource Path section of the URI. The subset is determined by selecting only the Entries that satisfy the predicate expression specified by the query option. The expression language that is used in at operators supports references to properties and literals. The literal values can be strings enclosed in single quotes, numbers and boolean values (true or false) or any of the additional literal representations shown in the Abstract Type System section.
  # @option opts [String] :tags The &#39;tags&#39; parameter is used to request a summary of the Tag utilization for this resource. When the &#39;tags&#39; parameter is specified, the response provides a list of tag keys, the number of times the key has been used across all documents, and the tag values that have been assigned to the tag key.
  # @return [NetworkVlanPortInfoResponse]
  describe 'get_network_vlan_port_info_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_network_element
  # Update a &#39;network.Element&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_element The &#39;network.Element&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkElement]
  describe 'patch_network_element test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_network_fc_zone_info
  # Update a &#39;network.FcZoneInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_fc_zone_info The &#39;network.FcZoneInfo&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkFcZoneInfo]
  describe 'patch_network_fc_zone_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_network_vlan_port_info
  # Update a &#39;network.VlanPortInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_vlan_port_info The &#39;network.VlanPortInfo&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkVlanPortInfo]
  describe 'patch_network_vlan_port_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_network_element
  # Update a &#39;network.Element&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_element The &#39;network.Element&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkElement]
  describe 'update_network_element test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_network_fc_zone_info
  # Update a &#39;network.FcZoneInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_fc_zone_info The &#39;network.FcZoneInfo&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkFcZoneInfo]
  describe 'update_network_fc_zone_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_network_vlan_port_info
  # Update a &#39;network.VlanPortInfo&#39; resource.
  # @param moid The unique Moid identifier of a resource instance.
  # @param network_vlan_port_info The &#39;network.VlanPortInfo&#39; resource to update.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :if_match For methods that apply server-side changes, and in particular for PUT, If-Match can be used to prevent the lost update problem. It can check if the modification of a resource that the user wants to upload will not override another change that has been done since the original resource was fetched. If the request cannot be fulfilled, the 412 (Precondition Failed) response is returned. When modifying a resource using POST or PUT, the If-Match header must be set to the value of the resource ModTime property after which no lost update problem should occur. For example, a client send a GET request to obtain a resource, which includes the ModTime property. The ModTime indicates the last time the resource was created or modified. The client then sends a POST or PUT request with the If-Match header set to the ModTime property of the resource as obtained in the GET request.
  # @return [NetworkVlanPortInfo]
  describe 'update_network_vlan_port_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
