=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1-SNAPSHOT

=end

require 'date'
require 'time'

module IntersightClient
  # An abstract class that holds the details of a device connectors connection to Intersight.
  class AssetDeviceConnection < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
    attr_accessor :object_type

    # The version of the connector API, describes the capability of the connector's framework. If the version is lower than the current minimum supported version defined in the service managing the connection, the device connector will be connected with limited capabilities until the device connector is upgraded to a fully supported version. For example if a device connector that was released without delta inventory capabilities registers and connects to Intersight, inventory collection may be disabled until it has been upgraded.
    attr_accessor :api_version

    # The partition number corresponding to the instance of the Proxy App which is managing the web-socket to the device connector.
    attr_accessor :app_partition_number

    # The unique identifier for the current connection. The identifier persists across network connectivity loss and is reset on device connector process restart or platform administrator toggle of the Intersight connectivity. The connectionId can be used by services that need to interact with stateful plugins running in the device connector process. For example if a service schedules an inventory in a devices job scheduler plugin at registration it is not necessary to reschedule the job if the device loses network connectivity due to an Intersight service upgrade or intermittent network issues in the devices datacenter.
    attr_accessor :connection_id

    # If 'connectionStatus' is not equal to Connected, connectionReason provides further details about why the device is not connected with Intersight.
    attr_accessor :connection_reason

    # The status of the persistent connection between the device connector and Intersight. * `` - The target details have been persisted but Intersight has not yet attempted to connect to the target. * `Connected` - Intersight is able to establish a connection to the target and initiate management activities. * `NotConnected` - Intersight is unable to establish a connection to the target. * `ClaimInProgress` - Claim of the target is in progress. A connection to the target has not been fully established. * `Unclaimed` - The device was un-claimed from the users account by an Administrator of the device. Also indicates the failure to claim Targets of type HTTP Endpoint in Intersight. * `Claimed` - Target of type HTTP Endpoint is successfully claimed in Intersight. Currently no validation is performed to verify the Target connectivity from Intersight at the time of creation. However invoking API from Intersight Orchestrator fails if this Target is not reachable from Intersight or if Target API credentials are incorrect.
    attr_accessor :connection_status

    # The last time at which the 'connectionStatus' property value changed. If connectionStatus is Connected, this time can be interpreted as the starting time since which a persistent connection has been maintained between Intersight and Device Connector. If connectionStatus is NotConnected, this time can be interpreted as the last time the device connector was connected with Intersight.
    attr_accessor :connection_status_last_change_time

    # The version of the device connector running on the managed device.
    attr_accessor :connector_version

    # The IP Address of the managed device as seen from Intersight at the time of registration. This could be the IP address of the managed device's interface which has a route to the internet or a NAT IP addresss when the managed device is deployed in a private network.
    attr_accessor :device_external_ip_address

    # The name of the app which will proxy the messages to the device connector.
    attr_accessor :proxy_app

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'class_id' => :'ClassId',
        :'object_type' => :'ObjectType',
        :'api_version' => :'ApiVersion',
        :'app_partition_number' => :'AppPartitionNumber',
        :'connection_id' => :'ConnectionId',
        :'connection_reason' => :'ConnectionReason',
        :'connection_status' => :'ConnectionStatus',
        :'connection_status_last_change_time' => :'ConnectionStatusLastChangeTime',
        :'connector_version' => :'ConnectorVersion',
        :'device_external_ip_address' => :'DeviceExternalIpAddress',
        :'proxy_app' => :'ProxyApp'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'api_version' => :'Integer',
        :'app_partition_number' => :'Integer',
        :'connection_id' => :'String',
        :'connection_reason' => :'String',
        :'connection_status' => :'String',
        :'connection_status_last_change_time' => :'Time',
        :'connector_version' => :'String',
        :'device_external_ip_address' => :'String',
        :'proxy_app' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AssetDeviceConnectionAllOf',
      :'MoBaseMo'
      ]
    end

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'ClassId'
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::AssetDeviceConnection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::AssetDeviceConnection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      end

      if attributes.key?(:'api_version')
        self.api_version = attributes[:'api_version']
      end

      if attributes.key?(:'app_partition_number')
        self.app_partition_number = attributes[:'app_partition_number']
      end

      if attributes.key?(:'connection_id')
        self.connection_id = attributes[:'connection_id']
      end

      if attributes.key?(:'connection_reason')
        self.connection_reason = attributes[:'connection_reason']
      end

      if attributes.key?(:'connection_status')
        self.connection_status = attributes[:'connection_status']
      else
        self.connection_status = ''
      end

      if attributes.key?(:'connection_status_last_change_time')
        self.connection_status_last_change_time = attributes[:'connection_status_last_change_time']
      end

      if attributes.key?(:'connector_version')
        self.connector_version = attributes[:'connector_version']
      end

      if attributes.key?(:'device_external_ip_address')
        self.device_external_ip_address = attributes[:'device_external_ip_address']
      end

      if attributes.key?(:'proxy_app')
        self.proxy_app = attributes[:'proxy_app']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["asset.ClusterMember", "asset.DeviceRegistration"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["asset.ClusterMember", "asset.DeviceRegistration"])
      return false unless object_type_validator.valid?(@object_type)
      connection_status_validator = EnumAttributeValidator.new('String', ["", "Connected", "NotConnected", "ClaimInProgress", "Unclaimed", "Claimed"])
      return false unless connection_status_validator.valid?(@connection_status)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["asset.ClusterMember", "asset.DeviceRegistration"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["asset.ClusterMember", "asset.DeviceRegistration"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connection_status Object to be assigned
    def connection_status=(connection_status)
      validator = EnumAttributeValidator.new('String', ["", "Connected", "NotConnected", "ClaimInProgress", "Unclaimed", "Claimed"])
      unless validator.valid?(connection_status)
        fail ArgumentError, "invalid value for \"connection_status\", must be one of #{validator.allowable_values}."
      end
      @connection_status = connection_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          api_version == o.api_version &&
          app_partition_number == o.app_partition_number &&
          connection_id == o.connection_id &&
          connection_reason == o.connection_reason &&
          connection_status == o.connection_status &&
          connection_status_last_change_time == o.connection_status_last_change_time &&
          connector_version == o.connector_version &&
          device_external_ip_address == o.device_external_ip_address &&
          proxy_app == o.proxy_app && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, api_version, app_partition_number, connection_id, connection_reason, connection_status, connection_status_last_change_time, connector_version, device_external_ip_address, proxy_app].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = IntersightClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
