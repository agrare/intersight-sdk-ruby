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
  # Record of HyperFlex Cluster backup policy deployment.
  class HyperflexClusterBackupPolicyDeployment < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Backup data store name used during the auto creation of the datastore. All VMs created in this data store will be automatically backed up.
    attr_accessor :backup_data_store_name

    # Replication data store size in backupDataStoreSizeUnit.
    attr_accessor :backup_data_store_size

    # Replication data store size.
    attr_accessor :backup_data_store_size_unit

    # Whether the datastore is encrypted or not.
    attr_accessor :data_store_encryption_enabled

    # Description from corresponding ClusterBackupPolicy.
    attr_accessor :description

    # True if record created by discovery on HyperFlex cluster.
    attr_accessor :discovered

    # Number of snapshots that will be retained as part of the Multi Point in Time support.
    attr_accessor :local_snapshot_retention_count

    # Name from corresponding ClusterBackupPolicy.
    attr_accessor :name

    # Deployed cluster policy moid.
    attr_accessor :policy_moid

    # Deployed cluster profile moid.
    attr_accessor :profile_moid

    # Replication cluster pairing name prefix.
    attr_accessor :replication_pair_name_prefix

    attr_accessor :replication_schedule

    # Number of snapshots that will be retained as part of the Multi Point in Time support.
    attr_accessor :snapshot_retention_count

    # True if policy was detached from source Hyperflex Cluster.
    attr_accessor :source_detached

    # Unique source cluster request ID allowing retry of the same logical request following a transient communication failure.
    attr_accessor :source_request_id

    # Uuid of the source Hyperflex Cluster.
    attr_accessor :source_uuid

    # True if policy was detached from target Hyperflex Cluster.
    attr_accessor :target_detached

    # Unique target cluster request ID allowing retry of the same logical request following a transient communication failure.
    attr_accessor :target_request_id

    # Uuid of the target Hyperflex Cluster.
    attr_accessor :target_uuid

    attr_accessor :backup_target

    attr_accessor :organization

    attr_accessor :source_cluster

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
        :'backup_data_store_name' => :'BackupDataStoreName',
        :'backup_data_store_size' => :'BackupDataStoreSize',
        :'backup_data_store_size_unit' => :'BackupDataStoreSizeUnit',
        :'data_store_encryption_enabled' => :'DataStoreEncryptionEnabled',
        :'description' => :'Description',
        :'discovered' => :'Discovered',
        :'local_snapshot_retention_count' => :'LocalSnapshotRetentionCount',
        :'name' => :'Name',
        :'policy_moid' => :'PolicyMoid',
        :'profile_moid' => :'ProfileMoid',
        :'replication_pair_name_prefix' => :'ReplicationPairNamePrefix',
        :'replication_schedule' => :'ReplicationSchedule',
        :'snapshot_retention_count' => :'SnapshotRetentionCount',
        :'source_detached' => :'SourceDetached',
        :'source_request_id' => :'SourceRequestId',
        :'source_uuid' => :'SourceUuid',
        :'target_detached' => :'TargetDetached',
        :'target_request_id' => :'TargetRequestId',
        :'target_uuid' => :'TargetUuid',
        :'backup_target' => :'BackupTarget',
        :'organization' => :'Organization',
        :'source_cluster' => :'SourceCluster'
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
        :'backup_data_store_name' => :'String',
        :'backup_data_store_size' => :'Integer',
        :'backup_data_store_size_unit' => :'String',
        :'data_store_encryption_enabled' => :'Boolean',
        :'description' => :'String',
        :'discovered' => :'Boolean',
        :'local_snapshot_retention_count' => :'Integer',
        :'name' => :'String',
        :'policy_moid' => :'String',
        :'profile_moid' => :'String',
        :'replication_pair_name_prefix' => :'String',
        :'replication_schedule' => :'HyperflexReplicationSchedule',
        :'snapshot_retention_count' => :'Integer',
        :'source_detached' => :'Boolean',
        :'source_request_id' => :'String',
        :'source_uuid' => :'String',
        :'target_detached' => :'Boolean',
        :'target_request_id' => :'String',
        :'target_uuid' => :'String',
        :'backup_target' => :'HyperflexClusterRelationship',
        :'organization' => :'OrganizationOrganizationRelationship',
        :'source_cluster' => :'HyperflexClusterRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'replication_schedule',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'HyperflexClusterBackupPolicyDeploymentAllOf',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::HyperflexClusterBackupPolicyDeployment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::HyperflexClusterBackupPolicyDeployment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'hyperflex.ClusterBackupPolicyDeployment'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'hyperflex.ClusterBackupPolicyDeployment'
      end

      if attributes.key?(:'backup_data_store_name')
        self.backup_data_store_name = attributes[:'backup_data_store_name']
      else
        self.backup_data_store_name = 'backup-source-ds'
      end

      if attributes.key?(:'backup_data_store_size')
        self.backup_data_store_size = attributes[:'backup_data_store_size']
      else
        self.backup_data_store_size = 2
      end

      if attributes.key?(:'backup_data_store_size_unit')
        self.backup_data_store_size_unit = attributes[:'backup_data_store_size_unit']
      else
        self.backup_data_store_size_unit = 'TB'
      end

      if attributes.key?(:'data_store_encryption_enabled')
        self.data_store_encryption_enabled = attributes[:'data_store_encryption_enabled']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'discovered')
        self.discovered = attributes[:'discovered']
      end

      if attributes.key?(:'local_snapshot_retention_count')
        self.local_snapshot_retention_count = attributes[:'local_snapshot_retention_count']
      else
        self.local_snapshot_retention_count = 4
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'policy_moid')
        self.policy_moid = attributes[:'policy_moid']
      end

      if attributes.key?(:'profile_moid')
        self.profile_moid = attributes[:'profile_moid']
      end

      if attributes.key?(:'replication_pair_name_prefix')
        self.replication_pair_name_prefix = attributes[:'replication_pair_name_prefix']
      else
        self.replication_pair_name_prefix = 'backup'
      end

      if attributes.key?(:'replication_schedule')
        self.replication_schedule = attributes[:'replication_schedule']
      end

      if attributes.key?(:'snapshot_retention_count')
        self.snapshot_retention_count = attributes[:'snapshot_retention_count']
      else
        self.snapshot_retention_count = 4
      end

      if attributes.key?(:'source_detached')
        self.source_detached = attributes[:'source_detached']
      end

      if attributes.key?(:'source_request_id')
        self.source_request_id = attributes[:'source_request_id']
      end

      if attributes.key?(:'source_uuid')
        self.source_uuid = attributes[:'source_uuid']
      end

      if attributes.key?(:'target_detached')
        self.target_detached = attributes[:'target_detached']
      end

      if attributes.key?(:'target_request_id')
        self.target_request_id = attributes[:'target_request_id']
      end

      if attributes.key?(:'target_uuid')
        self.target_uuid = attributes[:'target_uuid']
      end

      if attributes.key?(:'backup_target')
        self.backup_target = attributes[:'backup_target']
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'source_cluster')
        self.source_cluster = attributes[:'source_cluster']
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

      if !@local_snapshot_retention_count.nil? && @local_snapshot_retention_count > 30
        invalid_properties.push('invalid value for "local_snapshot_retention_count", must be smaller than or equal to 30.')
      end

      if !@local_snapshot_retention_count.nil? && @local_snapshot_retention_count < 1
        invalid_properties.push('invalid value for "local_snapshot_retention_count", must be greater than or equal to 1.')
      end

      if !@snapshot_retention_count.nil? && @snapshot_retention_count > 30
        invalid_properties.push('invalid value for "snapshot_retention_count", must be smaller than or equal to 30.')
      end

      if !@snapshot_retention_count.nil? && @snapshot_retention_count < 1
        invalid_properties.push('invalid value for "snapshot_retention_count", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyDeployment"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyDeployment"])
      return false unless object_type_validator.valid?(@object_type)
      return false if !@local_snapshot_retention_count.nil? && @local_snapshot_retention_count > 30
      return false if !@local_snapshot_retention_count.nil? && @local_snapshot_retention_count < 1
      return false if !@snapshot_retention_count.nil? && @snapshot_retention_count > 30
      return false if !@snapshot_retention_count.nil? && @snapshot_retention_count < 1
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyDeployment"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyDeployment"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method with validation
    # @param [Object] local_snapshot_retention_count Value to be assigned
    def local_snapshot_retention_count=(local_snapshot_retention_count)
      if !local_snapshot_retention_count.nil? && local_snapshot_retention_count > 30
        fail ArgumentError, 'invalid value for "local_snapshot_retention_count", must be smaller than or equal to 30.'
      end

      if !local_snapshot_retention_count.nil? && local_snapshot_retention_count < 1
        fail ArgumentError, 'invalid value for "local_snapshot_retention_count", must be greater than or equal to 1.'
      end

      @local_snapshot_retention_count = local_snapshot_retention_count
    end

    # Custom attribute writer method with validation
    # @param [Object] snapshot_retention_count Value to be assigned
    def snapshot_retention_count=(snapshot_retention_count)
      if !snapshot_retention_count.nil? && snapshot_retention_count > 30
        fail ArgumentError, 'invalid value for "snapshot_retention_count", must be smaller than or equal to 30.'
      end

      if !snapshot_retention_count.nil? && snapshot_retention_count < 1
        fail ArgumentError, 'invalid value for "snapshot_retention_count", must be greater than or equal to 1.'
      end

      @snapshot_retention_count = snapshot_retention_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          backup_data_store_name == o.backup_data_store_name &&
          backup_data_store_size == o.backup_data_store_size &&
          backup_data_store_size_unit == o.backup_data_store_size_unit &&
          data_store_encryption_enabled == o.data_store_encryption_enabled &&
          description == o.description &&
          discovered == o.discovered &&
          local_snapshot_retention_count == o.local_snapshot_retention_count &&
          name == o.name &&
          policy_moid == o.policy_moid &&
          profile_moid == o.profile_moid &&
          replication_pair_name_prefix == o.replication_pair_name_prefix &&
          replication_schedule == o.replication_schedule &&
          snapshot_retention_count == o.snapshot_retention_count &&
          source_detached == o.source_detached &&
          source_request_id == o.source_request_id &&
          source_uuid == o.source_uuid &&
          target_detached == o.target_detached &&
          target_request_id == o.target_request_id &&
          target_uuid == o.target_uuid &&
          backup_target == o.backup_target &&
          organization == o.organization &&
          source_cluster == o.source_cluster && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, backup_data_store_name, backup_data_store_size, backup_data_store_size_unit, data_store_encryption_enabled, description, discovered, local_snapshot_retention_count, name, policy_moid, profile_moid, replication_pair_name_prefix, replication_schedule, snapshot_retention_count, source_detached, source_request_id, source_uuid, target_detached, target_request_id, target_uuid, backup_target, organization, source_cluster].hash
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
