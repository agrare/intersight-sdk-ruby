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
  # Profile giving server hardware details, OS details and UCS Version details.
  class HclHardwareCompatibilityProfile < MoBaseComplexType
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Url for the ISO with the drivers supported for the server.
    attr_accessor :driver_iso_url

    # Error code indicating the compatibility status. * `Success` - The input combination is valid. * `Unknown` - Unknown API request to the service. * `UnknownServer` - An invalid server model is given API requests or the server model is not present in the HCL database. * `InvalidUcsVersion` - UCS Version is not in expected format. * `ProcessorNotSupported` - Processor is not supported with the given Server or the Processor does not exist in the HCL database. * `OSNotSupported` - OS version is not supported with the given server, processor combination or OS information is not present in the HCL database. * `OSUnknown` - OS vendor or version is not known as per the HCL database. * `UCSVersionNotSupported` - UCS Version is not supported with the given server, processor and OS combination or the UCS version is not present in the HCL database. * `UcsVersionServerOSCombinationNotSupported` - Combination of UCS version, server (model and processor) and os version is not supported. * `ProductUnknown` - Product is not known as per the HCL database. * `ProductNotSupported` - Product is not supported in the given UCS version, server (model and processor) and operating system version. * `DriverNameNotSupported` - Driver protocol or name is not supported for the given product. * `FirmwareVersionNotSupported` - Firmware version not supported for the component and the server, operating system combination. * `DriverVersionNotSupported` - Driver version not supported for the component and the server, operating system combination. * `FirmwareVersionDriverVersionCombinationNotSupported` - Both Firmware and Driver versions are not supported for the component and the server, operating system combination. * `FirmwareVersionAndDriverVersionNotSupported` - Firmware and Driver version combination not supported for the component and the server, operating system combination. * `FirmwareVersionAndDriverNameNotSupported` - Firmware Version and Driver name or not supported with the component and the server, operating system combination. * `InternalError` - API requests to the service have either failed or timed out. * `MarshallingError` - Error in JSON marshalling. * `Exempted` - An exempted error code means that the product is part of the exempted Catalog and should be ignored for HCL validation purposes.
    attr_accessor :error_code

    # Identifier of the hardware compatibility profile.
    attr_accessor :id

    # Vendor of the Operating System running on the server.
    attr_accessor :os_vendor

    # Version of the Operating System running on the server.
    attr_accessor :os_version

    # Model of the processor present in the server.
    attr_accessor :processor_model

    attr_accessor :products

    # Model of the server as returned by UCSM/CIMC XML API.
    attr_accessor :server_model

    # Revision of the server model.
    attr_accessor :server_revision

    # Version of the UCS software.
    attr_accessor :ucs_version

    # Type of the UCS version indicating whether it is a UCSM release vesion or a IMC release. * `UCSM` - The server is managed by UCS Manager. * `IMC` - The server is standalone managed by CIMC.
    attr_accessor :version_type

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
        :'driver_iso_url' => :'DriverIsoUrl',
        :'error_code' => :'ErrorCode',
        :'id' => :'Id',
        :'os_vendor' => :'OsVendor',
        :'os_version' => :'OsVersion',
        :'processor_model' => :'ProcessorModel',
        :'products' => :'Products',
        :'server_model' => :'ServerModel',
        :'server_revision' => :'ServerRevision',
        :'ucs_version' => :'UcsVersion',
        :'version_type' => :'VersionType'
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
        :'driver_iso_url' => :'String',
        :'error_code' => :'String',
        :'id' => :'String',
        :'os_vendor' => :'String',
        :'os_version' => :'String',
        :'processor_model' => :'String',
        :'products' => :'Array<HclProduct>',
        :'server_model' => :'String',
        :'server_revision' => :'String',
        :'ucs_version' => :'String',
        :'version_type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'products',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'HclHardwareCompatibilityProfileAllOf',
      :'MoBaseComplexType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::HclHardwareCompatibilityProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::HclHardwareCompatibilityProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'hcl.HardwareCompatibilityProfile'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'hcl.HardwareCompatibilityProfile'
      end

      if attributes.key?(:'driver_iso_url')
        self.driver_iso_url = attributes[:'driver_iso_url']
      end

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      else
        self.error_code = 'Success'
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'os_vendor')
        self.os_vendor = attributes[:'os_vendor']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'processor_model')
        self.processor_model = attributes[:'processor_model']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'server_model')
        self.server_model = attributes[:'server_model']
      end

      if attributes.key?(:'server_revision')
        self.server_revision = attributes[:'server_revision']
      end

      if attributes.key?(:'ucs_version')
        self.ucs_version = attributes[:'ucs_version']
      end

      if attributes.key?(:'version_type')
        self.version_type = attributes[:'version_type']
      else
        self.version_type = 'UCSM'
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
      class_id_validator = EnumAttributeValidator.new('String', ["hcl.HardwareCompatibilityProfile"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hcl.HardwareCompatibilityProfile"])
      return false unless object_type_validator.valid?(@object_type)
      error_code_validator = EnumAttributeValidator.new('String', ["Success", "Unknown", "UnknownServer", "InvalidUcsVersion", "ProcessorNotSupported", "OSNotSupported", "OSUnknown", "UCSVersionNotSupported", "UcsVersionServerOSCombinationNotSupported", "ProductUnknown", "ProductNotSupported", "DriverNameNotSupported", "FirmwareVersionNotSupported", "DriverVersionNotSupported", "FirmwareVersionDriverVersionCombinationNotSupported", "FirmwareVersionAndDriverVersionNotSupported", "FirmwareVersionAndDriverNameNotSupported", "InternalError", "MarshallingError", "Exempted"])
      return false unless error_code_validator.valid?(@error_code)
      version_type_validator = EnumAttributeValidator.new('String', ["UCSM", "IMC"])
      return false unless version_type_validator.valid?(@version_type)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hcl.HardwareCompatibilityProfile"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hcl.HardwareCompatibilityProfile"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(error_code)
      validator = EnumAttributeValidator.new('String', ["Success", "Unknown", "UnknownServer", "InvalidUcsVersion", "ProcessorNotSupported", "OSNotSupported", "OSUnknown", "UCSVersionNotSupported", "UcsVersionServerOSCombinationNotSupported", "ProductUnknown", "ProductNotSupported", "DriverNameNotSupported", "FirmwareVersionNotSupported", "DriverVersionNotSupported", "FirmwareVersionDriverVersionCombinationNotSupported", "FirmwareVersionAndDriverVersionNotSupported", "FirmwareVersionAndDriverNameNotSupported", "InternalError", "MarshallingError", "Exempted"])
      unless validator.valid?(error_code)
        fail ArgumentError, "invalid value for \"error_code\", must be one of #{validator.allowable_values}."
      end
      @error_code = error_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] version_type Object to be assigned
    def version_type=(version_type)
      validator = EnumAttributeValidator.new('String', ["UCSM", "IMC"])
      unless validator.valid?(version_type)
        fail ArgumentError, "invalid value for \"version_type\", must be one of #{validator.allowable_values}."
      end
      @version_type = version_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          driver_iso_url == o.driver_iso_url &&
          error_code == o.error_code &&
          id == o.id &&
          os_vendor == o.os_vendor &&
          os_version == o.os_version &&
          processor_model == o.processor_model &&
          products == o.products &&
          server_model == o.server_model &&
          server_revision == o.server_revision &&
          ucs_version == o.ucs_version &&
          version_type == o.version_type && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, driver_iso_url, error_code, id, os_vendor, os_version, processor_model, products, server_model, server_revision, ucs_version, version_type].hash
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
