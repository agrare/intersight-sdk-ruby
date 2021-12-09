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
  # A volume entity in Hitachi storage array.
  class StorageHitachiVolume < StorageBaseVolume
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    attr_accessor :attributes

    # CLPR (Cache Logical Partition) number of this volume.
    attr_accessor :clpr_id

    # Setting of the capacity saving function (dedupe and compression). * `N/A` - The capacity saving function is not available. * `Compression` - The capacity saving function (compression) is enabled. * `Compression Deduplication` - The capacity saving function (compression and deduplication) is enabled. * `Disabled` - The capacity saving function (compression and deduplication) is disabled.
    attr_accessor :data_reduction_mode

    # Status of the capacity saving function. * `N/A` - The capacity saving function is not available. * `Enabled` - The capacity saving function is enabled. * `Disabled` - The capacity saving function is disabled. * `Enabling` - The capacity saving function is being enabled. * `Rehydrating` - The capacity saving function is being disabled. * `Deleting` - The volumes for which the capacity saving function is enabled are being deleted. * `Failed` - An attempt to enable the capacity saving function failed.
    attr_accessor :data_reduction_status

    # Code indicating the drive type of the drive belonging to the volume.
    attr_accessor :drive_type

    # The volume emulation type or the volume status information. * `N/A` - Not available. * `NOT DEFINED` - The volume is not implemented. * `DEFINING` - The volume is being created. * `REMOVING` - The volume is being removed. * `OPEN-V` - To be provided by Hitachi.
    attr_accessor :emulation_type

    # Whether pages are reserved by the FullAllocation functionality.
    attr_accessor :is_full_allocation_enabled

    # Label of the volume, as configured in the storage array.
    attr_accessor :label

    # Namespace ID registered in NVM Subsystem.
    attr_accessor :namespace_id

    # Number of paths set for the volume.
    attr_accessor :num_of_paths

    # NVM subsystem ID on storage system.
    attr_accessor :nvm_subsystem_id

    attr_accessor :parity_group_ids

    # ID of the pool with which the volume is associated.
    attr_accessor :pool_id

    # RAID level for the volume. * `N/A` - RAID level is unknown or multiple RAID levels are being used. * `RAID1` - RAID1. * `RAID5` - RAID5. * `RAID6` - RAID6.
    attr_accessor :raid_level

    # RAID type drive configuration.
    attr_accessor :raid_type

    # Status information of the volume. * `N/A` - The volume status is not available. * `NML` - The volume is in normal status. * `BLK` - The volume is in blocked state. * `BSY` - The volume status is being changed. * `Unknown` - The volume status is unknown (not supported).
    attr_accessor :status

    attr_accessor :array

    # An array of relationships to storageHitachiParityGroup resources.
    attr_accessor :parity_groups

    attr_accessor :pool

    attr_accessor :registered_device

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
        :'attributes' => :'Attributes',
        :'clpr_id' => :'ClprId',
        :'data_reduction_mode' => :'DataReductionMode',
        :'data_reduction_status' => :'DataReductionStatus',
        :'drive_type' => :'DriveType',
        :'emulation_type' => :'EmulationType',
        :'is_full_allocation_enabled' => :'IsFullAllocationEnabled',
        :'label' => :'Label',
        :'namespace_id' => :'NamespaceId',
        :'num_of_paths' => :'NumOfPaths',
        :'nvm_subsystem_id' => :'NvmSubsystemId',
        :'parity_group_ids' => :'ParityGroupIds',
        :'pool_id' => :'PoolId',
        :'raid_level' => :'RaidLevel',
        :'raid_type' => :'RaidType',
        :'status' => :'Status',
        :'array' => :'Array',
        :'parity_groups' => :'ParityGroups',
        :'pool' => :'Pool',
        :'registered_device' => :'RegisteredDevice'
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
        :'attributes' => :'Array<String>',
        :'clpr_id' => :'Integer',
        :'data_reduction_mode' => :'String',
        :'data_reduction_status' => :'String',
        :'drive_type' => :'String',
        :'emulation_type' => :'String',
        :'is_full_allocation_enabled' => :'Boolean',
        :'label' => :'String',
        :'namespace_id' => :'String',
        :'num_of_paths' => :'Integer',
        :'nvm_subsystem_id' => :'String',
        :'parity_group_ids' => :'Array<String>',
        :'pool_id' => :'String',
        :'raid_level' => :'String',
        :'raid_type' => :'String',
        :'status' => :'String',
        :'array' => :'StorageHitachiArrayRelationship',
        :'parity_groups' => :'Array<StorageHitachiParityGroupRelationship>',
        :'pool' => :'StorageHitachiPoolRelationship',
        :'registered_device' => :'AssetDeviceRegistrationRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'attributes',
        :'parity_group_ids',
        :'parity_groups',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'StorageBaseVolume',
      :'StorageHitachiVolumeAllOf'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::StorageHitachiVolume` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::StorageHitachiVolume`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'storage.HitachiVolume'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'storage.HitachiVolume'
      end

      if attributes.key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
      end

      if attributes.key?(:'clpr_id')
        self.clpr_id = attributes[:'clpr_id']
      end

      if attributes.key?(:'data_reduction_mode')
        self.data_reduction_mode = attributes[:'data_reduction_mode']
      else
        self.data_reduction_mode = 'N/A'
      end

      if attributes.key?(:'data_reduction_status')
        self.data_reduction_status = attributes[:'data_reduction_status']
      else
        self.data_reduction_status = 'N/A'
      end

      if attributes.key?(:'drive_type')
        self.drive_type = attributes[:'drive_type']
      end

      if attributes.key?(:'emulation_type')
        self.emulation_type = attributes[:'emulation_type']
      else
        self.emulation_type = 'N/A'
      end

      if attributes.key?(:'is_full_allocation_enabled')
        self.is_full_allocation_enabled = attributes[:'is_full_allocation_enabled']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'namespace_id')
        self.namespace_id = attributes[:'namespace_id']
      end

      if attributes.key?(:'num_of_paths')
        self.num_of_paths = attributes[:'num_of_paths']
      end

      if attributes.key?(:'nvm_subsystem_id')
        self.nvm_subsystem_id = attributes[:'nvm_subsystem_id']
      end

      if attributes.key?(:'parity_group_ids')
        if (value = attributes[:'parity_group_ids']).is_a?(Array)
          self.parity_group_ids = value
        end
      end

      if attributes.key?(:'pool_id')
        self.pool_id = attributes[:'pool_id']
      end

      if attributes.key?(:'raid_level')
        self.raid_level = attributes[:'raid_level']
      else
        self.raid_level = 'N/A'
      end

      if attributes.key?(:'raid_type')
        self.raid_type = attributes[:'raid_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'N/A'
      end

      if attributes.key?(:'array')
        self.array = attributes[:'array']
      end

      if attributes.key?(:'parity_groups')
        if (value = attributes[:'parity_groups']).is_a?(Array)
          self.parity_groups = value
        end
      end

      if attributes.key?(:'pool')
        self.pool = attributes[:'pool']
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
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
      class_id_validator = EnumAttributeValidator.new('String', ["storage.HitachiVolume"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["storage.HitachiVolume"])
      return false unless object_type_validator.valid?(@object_type)
      data_reduction_mode_validator = EnumAttributeValidator.new('String', ["N/A", "Compression", "Compression Deduplication", "Disabled"])
      return false unless data_reduction_mode_validator.valid?(@data_reduction_mode)
      data_reduction_status_validator = EnumAttributeValidator.new('String', ["N/A", "Enabled", "Disabled", "Enabling", "Rehydrating", "Deleting", "Failed"])
      return false unless data_reduction_status_validator.valid?(@data_reduction_status)
      emulation_type_validator = EnumAttributeValidator.new('String', ["N/A", "NOT DEFINED", "DEFINING", "REMOVING", "OPEN-V"])
      return false unless emulation_type_validator.valid?(@emulation_type)
      raid_level_validator = EnumAttributeValidator.new('String', ["N/A", "RAID1", "RAID5", "RAID6"])
      return false unless raid_level_validator.valid?(@raid_level)
      status_validator = EnumAttributeValidator.new('String', ["N/A", "NML", "BLK", "BSY", "Unknown"])
      return false unless status_validator.valid?(@status)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["storage.HitachiVolume"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["storage.HitachiVolume"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_reduction_mode Object to be assigned
    def data_reduction_mode=(data_reduction_mode)
      validator = EnumAttributeValidator.new('String', ["N/A", "Compression", "Compression Deduplication", "Disabled"])
      unless validator.valid?(data_reduction_mode)
        fail ArgumentError, "invalid value for \"data_reduction_mode\", must be one of #{validator.allowable_values}."
      end
      @data_reduction_mode = data_reduction_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_reduction_status Object to be assigned
    def data_reduction_status=(data_reduction_status)
      validator = EnumAttributeValidator.new('String', ["N/A", "Enabled", "Disabled", "Enabling", "Rehydrating", "Deleting", "Failed"])
      unless validator.valid?(data_reduction_status)
        fail ArgumentError, "invalid value for \"data_reduction_status\", must be one of #{validator.allowable_values}."
      end
      @data_reduction_status = data_reduction_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emulation_type Object to be assigned
    def emulation_type=(emulation_type)
      validator = EnumAttributeValidator.new('String', ["N/A", "NOT DEFINED", "DEFINING", "REMOVING", "OPEN-V"])
      unless validator.valid?(emulation_type)
        fail ArgumentError, "invalid value for \"emulation_type\", must be one of #{validator.allowable_values}."
      end
      @emulation_type = emulation_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] raid_level Object to be assigned
    def raid_level=(raid_level)
      validator = EnumAttributeValidator.new('String', ["N/A", "RAID1", "RAID5", "RAID6"])
      unless validator.valid?(raid_level)
        fail ArgumentError, "invalid value for \"raid_level\", must be one of #{validator.allowable_values}."
      end
      @raid_level = raid_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["N/A", "NML", "BLK", "BSY", "Unknown"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          attributes == o.attributes &&
          clpr_id == o.clpr_id &&
          data_reduction_mode == o.data_reduction_mode &&
          data_reduction_status == o.data_reduction_status &&
          drive_type == o.drive_type &&
          emulation_type == o.emulation_type &&
          is_full_allocation_enabled == o.is_full_allocation_enabled &&
          label == o.label &&
          namespace_id == o.namespace_id &&
          num_of_paths == o.num_of_paths &&
          nvm_subsystem_id == o.nvm_subsystem_id &&
          parity_group_ids == o.parity_group_ids &&
          pool_id == o.pool_id &&
          raid_level == o.raid_level &&
          raid_type == o.raid_type &&
          status == o.status &&
          array == o.array &&
          parity_groups == o.parity_groups &&
          pool == o.pool &&
          registered_device == o.registered_device && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, attributes, clpr_id, data_reduction_mode, data_reduction_status, drive_type, emulation_type, is_full_allocation_enabled, label, namespace_id, num_of_paths, nvm_subsystem_id, parity_group_ids, pool_id, raid_level, raid_type, status, array, parity_groups, pool, registered_device].hash
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
