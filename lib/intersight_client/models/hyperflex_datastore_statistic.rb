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
  # Datastore Statistic describing more detailed information about the Data Protection Peer.
  class HyperflexDatastoreStatistic < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # HyperFlex datastore accessibility summary. * `ACCESSIBLE` - The HyperFlex Accessibility Summary is Accessible. * `NOT_ACCESSIBLE` - The HyperFlex Accessibility Summary is Not Accessible. * `PARTIALLY_ACCESSIBLE` - The HyperFlex Accessibility Summary is Partially Accessible.
    attr_accessor :accessibility_summary

    # Timestamp the datastore object was created.
    attr_accessor :creation_time

    # HyperFlex Datastore Kind. * `UNKNOWN` - HyperFlex datastore kind is unknown. * `USER_CREATED` - HyperFlex datastore kind is user created. * `INTERNAL` - HyperFlex datastore kind is internal.
    attr_accessor :datastore_kind

    # HyperFlex datastore status. * `NORMAL` - The HyperFlex datastore status is normal. * `ALERT` - The HyperFlex datastore status is alert. * `FAILED` - The HyperFlex datastore status is failed.
    attr_accessor :datastore_status

    attr_accessor :dsconfig

    # Free capacity of the datastore in bytes.
    attr_accessor :free_capacity_in_bytes

    attr_accessor :host_mount_status

    # Indicates if the datastore is encrypted or un-encrypted.
    attr_accessor :is_encrypted

    # Timestamp the datastore object was last accessed.
    attr_accessor :last_access_time

    # Timestamp the datastore object was last modified.
    attr_accessor :last_modified_time

    # HyperFlex datastore mount summary. * `MOUNTED` - The HyperFlex mount summary is mounted. * `UNMOUNTED` - The HyperFlex mount summary is unmounted. * `MOUNT_FAILURE` - The HyperFlex mount summary is mount failure. * `UNMOUNT_FAILURE` - The HyperFlex mount summary is unmount failure.
    attr_accessor :mount_summary

    # UUID of the parent datastore object.
    attr_accessor :parent_uuid

    attr_accessor :site

    # Total capacity of the datastore object.
    attr_accessor :total_capacity_in_bytes

    # Number of uncompressed used bytes in the datastore.
    attr_accessor :un_compressed_used_bytes

    # Unshared used capacity of the datastore in bytes.
    attr_accessor :unshared_used_bytes

    # UUID for the datastore object.
    attr_accessor :uuid

    attr_accessor :data_protection_peer

    attr_accessor :src_cluster

    attr_accessor :tgt_cluster

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
        :'accessibility_summary' => :'AccessibilitySummary',
        :'creation_time' => :'CreationTime',
        :'datastore_kind' => :'DatastoreKind',
        :'datastore_status' => :'DatastoreStatus',
        :'dsconfig' => :'Dsconfig',
        :'free_capacity_in_bytes' => :'FreeCapacityInBytes',
        :'host_mount_status' => :'HostMountStatus',
        :'is_encrypted' => :'IsEncrypted',
        :'last_access_time' => :'LastAccessTime',
        :'last_modified_time' => :'LastModifiedTime',
        :'mount_summary' => :'MountSummary',
        :'parent_uuid' => :'ParentUuid',
        :'site' => :'Site',
        :'total_capacity_in_bytes' => :'TotalCapacityInBytes',
        :'un_compressed_used_bytes' => :'UnCompressedUsedBytes',
        :'unshared_used_bytes' => :'UnsharedUsedBytes',
        :'uuid' => :'Uuid',
        :'data_protection_peer' => :'DataProtectionPeer',
        :'src_cluster' => :'SrcCluster',
        :'tgt_cluster' => :'TgtCluster'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Returns the key-value map of all the JSON attributes this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attribute_map
      attribute_map.merge(superclass.acceptable_attribute_map)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'accessibility_summary' => :'String',
        :'creation_time' => :'String',
        :'datastore_kind' => :'String',
        :'datastore_status' => :'String',
        :'dsconfig' => :'HyperflexHxPlatformDatastoreConfigDt',
        :'free_capacity_in_bytes' => :'Integer',
        :'host_mount_status' => :'Array<HyperflexHxHostMountStatusDt>',
        :'is_encrypted' => :'Boolean',
        :'last_access_time' => :'String',
        :'last_modified_time' => :'String',
        :'mount_summary' => :'String',
        :'parent_uuid' => :'String',
        :'site' => :'HyperflexHxSiteDt',
        :'total_capacity_in_bytes' => :'Integer',
        :'un_compressed_used_bytes' => :'Integer',
        :'unshared_used_bytes' => :'Integer',
        :'uuid' => :'String',
        :'data_protection_peer' => :'HyperflexDataProtectionPeerRelationship',
        :'src_cluster' => :'HyperflexClusterRelationship',
        :'tgt_cluster' => :'HyperflexClusterRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'dsconfig',
        :'host_mount_status',
        :'site',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'HyperflexDatastoreStatisticAllOf',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::HyperflexDatastoreStatistic` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `#{self.class.name}`. Please check the name to make sure it's valid. List of attributes: " + self.class.acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'hyperflex.DatastoreStatistic'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'hyperflex.DatastoreStatistic'
      end

      if attributes.key?(:'accessibility_summary')
        self.accessibility_summary = attributes[:'accessibility_summary']
      else
        self.accessibility_summary = 'ACCESSIBLE'
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'datastore_kind')
        self.datastore_kind = attributes[:'datastore_kind']
      else
        self.datastore_kind = 'UNKNOWN'
      end

      if attributes.key?(:'datastore_status')
        self.datastore_status = attributes[:'datastore_status']
      else
        self.datastore_status = 'NORMAL'
      end

      if attributes.key?(:'dsconfig')
        self.dsconfig = attributes[:'dsconfig']
      end

      if attributes.key?(:'free_capacity_in_bytes')
        self.free_capacity_in_bytes = attributes[:'free_capacity_in_bytes']
      end

      if attributes.key?(:'host_mount_status')
        if (value = attributes[:'host_mount_status']).is_a?(Array)
          self.host_mount_status = value
        end
      end

      if attributes.key?(:'is_encrypted')
        self.is_encrypted = attributes[:'is_encrypted']
      end

      if attributes.key?(:'last_access_time')
        self.last_access_time = attributes[:'last_access_time']
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.key?(:'mount_summary')
        self.mount_summary = attributes[:'mount_summary']
      else
        self.mount_summary = 'MOUNTED'
      end

      if attributes.key?(:'parent_uuid')
        self.parent_uuid = attributes[:'parent_uuid']
      end

      if attributes.key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.key?(:'total_capacity_in_bytes')
        self.total_capacity_in_bytes = attributes[:'total_capacity_in_bytes']
      end

      if attributes.key?(:'un_compressed_used_bytes')
        self.un_compressed_used_bytes = attributes[:'un_compressed_used_bytes']
      end

      if attributes.key?(:'unshared_used_bytes')
        self.unshared_used_bytes = attributes[:'unshared_used_bytes']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'data_protection_peer')
        self.data_protection_peer = attributes[:'data_protection_peer']
      end

      if attributes.key?(:'src_cluster')
        self.src_cluster = attributes[:'src_cluster']
      end

      if attributes.key?(:'tgt_cluster')
        self.tgt_cluster = attributes[:'tgt_cluster']
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
      class_id_validator = EnumAttributeValidator.new('String', ["hyperflex.DatastoreStatistic"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hyperflex.DatastoreStatistic"])
      return false unless object_type_validator.valid?(@object_type)
      accessibility_summary_validator = EnumAttributeValidator.new('String', ["ACCESSIBLE", "NOT_ACCESSIBLE", "PARTIALLY_ACCESSIBLE"])
      return false unless accessibility_summary_validator.valid?(@accessibility_summary)
      datastore_kind_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "USER_CREATED", "INTERNAL"])
      return false unless datastore_kind_validator.valid?(@datastore_kind)
      datastore_status_validator = EnumAttributeValidator.new('String', ["NORMAL", "ALERT", "FAILED"])
      return false unless datastore_status_validator.valid?(@datastore_status)
      mount_summary_validator = EnumAttributeValidator.new('String', ["MOUNTED", "UNMOUNTED", "MOUNT_FAILURE", "UNMOUNT_FAILURE"])
      return false unless mount_summary_validator.valid?(@mount_summary)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hyperflex.DatastoreStatistic"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hyperflex.DatastoreStatistic"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accessibility_summary Object to be assigned
    def accessibility_summary=(accessibility_summary)
      validator = EnumAttributeValidator.new('String', ["ACCESSIBLE", "NOT_ACCESSIBLE", "PARTIALLY_ACCESSIBLE"])
      unless validator.valid?(accessibility_summary)
        fail ArgumentError, "invalid value for \"accessibility_summary\", must be one of #{validator.allowable_values}."
      end
      @accessibility_summary = accessibility_summary
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] datastore_kind Object to be assigned
    def datastore_kind=(datastore_kind)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "USER_CREATED", "INTERNAL"])
      unless validator.valid?(datastore_kind)
        fail ArgumentError, "invalid value for \"datastore_kind\", must be one of #{validator.allowable_values}."
      end
      @datastore_kind = datastore_kind
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] datastore_status Object to be assigned
    def datastore_status=(datastore_status)
      validator = EnumAttributeValidator.new('String', ["NORMAL", "ALERT", "FAILED"])
      unless validator.valid?(datastore_status)
        fail ArgumentError, "invalid value for \"datastore_status\", must be one of #{validator.allowable_values}."
      end
      @datastore_status = datastore_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mount_summary Object to be assigned
    def mount_summary=(mount_summary)
      validator = EnumAttributeValidator.new('String', ["MOUNTED", "UNMOUNTED", "MOUNT_FAILURE", "UNMOUNT_FAILURE"])
      unless validator.valid?(mount_summary)
        fail ArgumentError, "invalid value for \"mount_summary\", must be one of #{validator.allowable_values}."
      end
      @mount_summary = mount_summary
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          accessibility_summary == o.accessibility_summary &&
          creation_time == o.creation_time &&
          datastore_kind == o.datastore_kind &&
          datastore_status == o.datastore_status &&
          dsconfig == o.dsconfig &&
          free_capacity_in_bytes == o.free_capacity_in_bytes &&
          host_mount_status == o.host_mount_status &&
          is_encrypted == o.is_encrypted &&
          last_access_time == o.last_access_time &&
          last_modified_time == o.last_modified_time &&
          mount_summary == o.mount_summary &&
          parent_uuid == o.parent_uuid &&
          site == o.site &&
          total_capacity_in_bytes == o.total_capacity_in_bytes &&
          un_compressed_used_bytes == o.un_compressed_used_bytes &&
          unshared_used_bytes == o.unshared_used_bytes &&
          uuid == o.uuid &&
          data_protection_peer == o.data_protection_peer &&
          src_cluster == o.src_cluster &&
          tgt_cluster == o.tgt_cluster && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, accessibility_summary, creation_time, datastore_kind, datastore_status, dsconfig, free_capacity_in_bytes, host_mount_status, is_encrypted, last_access_time, last_modified_time, mount_summary, parent_uuid, site, total_capacity_in_bytes, un_compressed_used_bytes, unshared_used_bytes, uuid, data_protection_peer, src_cluster, tgt_cluster].hash
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
      HyperflexDatastoreStatistic.openapi_types.each_pair do |key, type|
        if attributes[HyperflexDatastoreStatistic.attribute_map[key]].nil? && HyperflexDatastoreStatistic.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[HyperflexDatastoreStatistic.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[HyperflexDatastoreStatistic.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[HyperflexDatastoreStatistic.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[HyperflexDatastoreStatistic.attribute_map[key]]))
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
      HyperflexDatastoreStatistic.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = HyperflexDatastoreStatistic.openapi_nullable.include?(attr)
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
