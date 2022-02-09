=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'date'
require 'time'

module IntersightClient
  # Definition of the list of properties defined in 'virtualization.BaseHost', excluding properties defined in parent classes.
  class VirtualizationBaseHostAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
    attr_accessor :object_type

    attr_accessor :cpu_info

    attr_accessor :hardware_info

    # Identifies the broad type of the underlying hypervisor. * `ESXi` - The hypervisor running on the HyperFlex cluster is a Vmware ESXi hypervisor of any version. * `HyperFlexAp` - The hypervisor of the virtualization platform is Cisco HyperFlex Application Platform. * `IWE` - The hypervisor of the virtualization platform is Cisco Intersight Workload Engine. * `Hyper-V` - The hypervisor running on the HyperFlex cluster is Microsoft Hyper-V. * `Unknown` - The hypervisor running on the HyperFlex cluster is not known.
    attr_accessor :hypervisor_type

    # The internally generated identity of this host. This entity is not manipulated by users. It aids in uniquely identifying the datacenter object. For VMware, this is an MOR (managed object reference).
    attr_accessor :identity

    # Is this host in maintenance mode. Set to true or false.
    attr_accessor :maintenance_mode

    attr_accessor :memory_capacity

    # Commercial model information about this hardware.
    attr_accessor :model

    # Name of this host supplied by user. It is not the identity of the host. The name is subject to user manipulations.
    attr_accessor :name

    attr_accessor :processor_capacity

    attr_accessor :product_info

    # Serial number of this host (internally generated).
    attr_accessor :serial

    # Host health status, as reported by the hypervisor platform. * `Unknown` - Entity status is unknown. * `Degraded` - State is degraded, and might impact normal operation of the entity. * `Critical` - Entity is in a critical state, impacting operations. * `Ok` - Entity status is in a stable state, operating normally.
    attr_accessor :status

    # The uptime of the host, stored as Duration (from w3c).
    attr_accessor :up_time

    # Universally unique identity of this host (example b3d4483b-5560-9342-8309-b486c9236610). Internally generated.
    attr_accessor :uuid

    # Commercial vendor details of this hardware.
    attr_accessor :vendor

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
        :'cpu_info' => :'CpuInfo',
        :'hardware_info' => :'HardwareInfo',
        :'hypervisor_type' => :'HypervisorType',
        :'identity' => :'Identity',
        :'maintenance_mode' => :'MaintenanceMode',
        :'memory_capacity' => :'MemoryCapacity',
        :'model' => :'Model',
        :'name' => :'Name',
        :'processor_capacity' => :'ProcessorCapacity',
        :'product_info' => :'ProductInfo',
        :'serial' => :'Serial',
        :'status' => :'Status',
        :'up_time' => :'UpTime',
        :'uuid' => :'Uuid',
        :'vendor' => :'Vendor'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Returns the key-value map of all the JSON attributes this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'cpu_info' => :'VirtualizationCpuInfo',
        :'hardware_info' => :'InfraHardwareInfo',
        :'hypervisor_type' => :'String',
        :'identity' => :'String',
        :'maintenance_mode' => :'Boolean',
        :'memory_capacity' => :'VirtualizationMemoryCapacity',
        :'model' => :'String',
        :'name' => :'String',
        :'processor_capacity' => :'VirtualizationComputeCapacity',
        :'product_info' => :'VirtualizationProductInfo',
        :'serial' => :'String',
        :'status' => :'String',
        :'up_time' => :'String',
        :'uuid' => :'String',
        :'vendor' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'cpu_info',
        :'hardware_info',
        :'memory_capacity',
        :'processor_capacity',
        :'product_info',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::VirtualizationBaseHostAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `#{self.class.name}`. Please check the name to make sure it's valid. List of attributes: " + self.class.acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      end

      if attributes.key?(:'cpu_info')
        self.cpu_info = attributes[:'cpu_info']
      end

      if attributes.key?(:'hardware_info')
        self.hardware_info = attributes[:'hardware_info']
      end

      if attributes.key?(:'hypervisor_type')
        self.hypervisor_type = attributes[:'hypervisor_type']
      else
        self.hypervisor_type = 'ESXi'
      end

      if attributes.key?(:'identity')
        self.identity = attributes[:'identity']
      end

      if attributes.key?(:'maintenance_mode')
        self.maintenance_mode = attributes[:'maintenance_mode']
      end

      if attributes.key?(:'memory_capacity')
        self.memory_capacity = attributes[:'memory_capacity']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'processor_capacity')
        self.processor_capacity = attributes[:'processor_capacity']
      end

      if attributes.key?(:'product_info')
        self.product_info = attributes[:'product_info']
      end

      if attributes.key?(:'serial')
        self.serial = attributes[:'serial']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'Unknown'
      end

      if attributes.key?(:'up_time')
        self.up_time = attributes[:'up_time']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !@uuid.nil? && @uuid !~ pattern
        invalid_properties.push("invalid value for \"uuid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["hyperflex.HxapHost", "virtualization.VmwareHost"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hyperflex.HxapHost", "virtualization.VmwareHost"])
      return false unless object_type_validator.valid?(@object_type)
      hypervisor_type_validator = EnumAttributeValidator.new('String', ["ESXi", "HyperFlexAp", "IWE", "Hyper-V", "Unknown"])
      return false unless hypervisor_type_validator.valid?(@hypervisor_type)
      status_validator = EnumAttributeValidator.new('String', ["Unknown", "Degraded", "Critical", "Ok"])
      return false unless status_validator.valid?(@status)
      return false if !@uuid.nil? && @uuid !~ Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hyperflex.HxapHost", "virtualization.VmwareHost"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hyperflex.HxapHost", "virtualization.VmwareHost"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hypervisor_type Object to be assigned
    def hypervisor_type=(hypervisor_type)
      validator = EnumAttributeValidator.new('String', ["ESXi", "HyperFlexAp", "IWE", "Hyper-V", "Unknown"])
      unless validator.valid?(hypervisor_type)
        fail ArgumentError, "invalid value for \"hypervisor_type\", must be one of #{validator.allowable_values}."
      end
      @hypervisor_type = hypervisor_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Unknown", "Degraded", "Critical", "Ok"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)
      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !uuid.nil? && uuid !~ pattern
        fail ArgumentError, "invalid value for \"uuid\", must conform to the pattern #{pattern}."
      end

      @uuid = uuid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          cpu_info == o.cpu_info &&
          hardware_info == o.hardware_info &&
          hypervisor_type == o.hypervisor_type &&
          identity == o.identity &&
          maintenance_mode == o.maintenance_mode &&
          memory_capacity == o.memory_capacity &&
          model == o.model &&
          name == o.name &&
          processor_capacity == o.processor_capacity &&
          product_info == o.product_info &&
          serial == o.serial &&
          status == o.status &&
          up_time == o.up_time &&
          uuid == o.uuid &&
          vendor == o.vendor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, cpu_info, hardware_info, hypervisor_type, identity, maintenance_mode, memory_capacity, model, name, processor_capacity, product_info, serial, status, up_time, uuid, vendor].hash
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
      VirtualizationBaseHostAllOf.openapi_types.each_pair do |key, type|
        if attributes[VirtualizationBaseHostAllOf.attribute_map[key]].nil? && VirtualizationBaseHostAllOf.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[VirtualizationBaseHostAllOf.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[VirtualizationBaseHostAllOf.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[VirtualizationBaseHostAllOf.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[VirtualizationBaseHostAllOf.attribute_map[key]]))
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
      hash = {}
      VirtualizationBaseHostAllOf.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = VirtualizationBaseHostAllOf.openapi_nullable.include?(attr)
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
