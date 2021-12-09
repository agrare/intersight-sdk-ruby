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
  # License information for an account.
  class LicenseAccountLicenseData < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Root user's ID of the account.
    attr_accessor :account_id

    # Agent trusted store data.
    attr_accessor :agent_data

    # Authorization expiration time.
    attr_accessor :auth_expire_time

    # Intial authorization time.
    attr_accessor :auth_initial_time

    # Next time for the authorization.
    attr_accessor :auth_next_time

    # Account license data category name.
    attr_accessor :category

    # Default license tier set by user. * `Base` - Base as a License type. It is default license type. * `Essential` - Essential as a License type. * `Standard` - Standard as a License type. * `Advantage` - Advantage as a License type. * `Premier` - Premier as a License type. * `IWO-Essential` - IWO-Essential as a License type. * `IWO-Advantage` - IWO-Advantage as a License type. * `IWO-Premier` - IWO-Premier as a License type.
    attr_accessor :default_license_type

    # The detailed error message when there is any error related to license sync of this account.
    attr_accessor :error_desc

    # Account license data group name.
    attr_accessor :group

    # The highest license tier which is in compliant of this account. * `Base` - Base as a License type. It is default license type. * `Essential` - Essential as a License type. * `Standard` - Standard as a License type. * `Advantage` - Advantage as a License type. * `Premier` - Premier as a License type. * `IWO-Essential` - IWO-Essential as a License type. * `IWO-Advantage` - IWO-Advantage as a License type. * `IWO-Premier` - IWO-Premier as a License type.
    attr_accessor :highest_compliant_license_tier

    # Specifies last certificate renew time with SA.
    attr_accessor :last_renew

    # Specifies last sync time with SA.
    attr_accessor :last_sync

    # Record's last update datetime.
    attr_accessor :last_updated_time

    # Aggregrated mode for the agent.
    attr_accessor :license_state

    # Tech-support info of a smart-agent.
    attr_accessor :license_tech_support_info

    # Registration exipiration time.
    attr_accessor :register_expire_time

    # Initial time of registration.
    attr_accessor :register_initial_time

    # Next time for the license registration.
    attr_accessor :register_next_time

    # Registration status of a smart-agent.
    attr_accessor :registration_status

    # License renewal failure message.
    attr_accessor :renew_failure_string

    # Name of the smart account.
    attr_accessor :smart_account

    # Current sync status for the account.
    attr_accessor :sync_status

    # Name of the virtual account.
    attr_accessor :virtual_account

    attr_accessor :account

    attr_accessor :customer_op

    attr_accessor :iwo_customer_op

    attr_accessor :iwo_license_count

    # An array of relationships to licenseLicenseInfo resources.
    attr_accessor :licenseinfos

    attr_accessor :smartlicense_token

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
        :'account_id' => :'AccountId',
        :'agent_data' => :'AgentData',
        :'auth_expire_time' => :'AuthExpireTime',
        :'auth_initial_time' => :'AuthInitialTime',
        :'auth_next_time' => :'AuthNextTime',
        :'category' => :'Category',
        :'default_license_type' => :'DefaultLicenseType',
        :'error_desc' => :'ErrorDesc',
        :'group' => :'Group',
        :'highest_compliant_license_tier' => :'HighestCompliantLicenseTier',
        :'last_renew' => :'LastRenew',
        :'last_sync' => :'LastSync',
        :'last_updated_time' => :'LastUpdatedTime',
        :'license_state' => :'LicenseState',
        :'license_tech_support_info' => :'LicenseTechSupportInfo',
        :'register_expire_time' => :'RegisterExpireTime',
        :'register_initial_time' => :'RegisterInitialTime',
        :'register_next_time' => :'RegisterNextTime',
        :'registration_status' => :'RegistrationStatus',
        :'renew_failure_string' => :'RenewFailureString',
        :'smart_account' => :'SmartAccount',
        :'sync_status' => :'SyncStatus',
        :'virtual_account' => :'VirtualAccount',
        :'account' => :'Account',
        :'customer_op' => :'CustomerOp',
        :'iwo_customer_op' => :'IwoCustomerOp',
        :'iwo_license_count' => :'IwoLicenseCount',
        :'licenseinfos' => :'Licenseinfos',
        :'smartlicense_token' => :'SmartlicenseToken'
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
        :'account_id' => :'String',
        :'agent_data' => :'String',
        :'auth_expire_time' => :'String',
        :'auth_initial_time' => :'String',
        :'auth_next_time' => :'String',
        :'category' => :'String',
        :'default_license_type' => :'String',
        :'error_desc' => :'String',
        :'group' => :'String',
        :'highest_compliant_license_tier' => :'String',
        :'last_renew' => :'Time',
        :'last_sync' => :'Time',
        :'last_updated_time' => :'Time',
        :'license_state' => :'String',
        :'license_tech_support_info' => :'String',
        :'register_expire_time' => :'String',
        :'register_initial_time' => :'String',
        :'register_next_time' => :'String',
        :'registration_status' => :'String',
        :'renew_failure_string' => :'String',
        :'smart_account' => :'String',
        :'sync_status' => :'String',
        :'virtual_account' => :'String',
        :'account' => :'IamAccountRelationship',
        :'customer_op' => :'LicenseCustomerOpRelationship',
        :'iwo_customer_op' => :'LicenseIwoCustomerOpRelationship',
        :'iwo_license_count' => :'LicenseIwoLicenseCountRelationship',
        :'licenseinfos' => :'Array<LicenseLicenseInfoRelationship>',
        :'smartlicense_token' => :'LicenseSmartlicenseTokenRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'licenseinfos',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'LicenseAccountLicenseDataAllOf',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::LicenseAccountLicenseData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::LicenseAccountLicenseData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'license.AccountLicenseData'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'license.AccountLicenseData'
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'agent_data')
        self.agent_data = attributes[:'agent_data']
      end

      if attributes.key?(:'auth_expire_time')
        self.auth_expire_time = attributes[:'auth_expire_time']
      end

      if attributes.key?(:'auth_initial_time')
        self.auth_initial_time = attributes[:'auth_initial_time']
      end

      if attributes.key?(:'auth_next_time')
        self.auth_next_time = attributes[:'auth_next_time']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'default_license_type')
        self.default_license_type = attributes[:'default_license_type']
      else
        self.default_license_type = 'Base'
      end

      if attributes.key?(:'error_desc')
        self.error_desc = attributes[:'error_desc']
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'highest_compliant_license_tier')
        self.highest_compliant_license_tier = attributes[:'highest_compliant_license_tier']
      else
        self.highest_compliant_license_tier = 'Base'
      end

      if attributes.key?(:'last_renew')
        self.last_renew = attributes[:'last_renew']
      end

      if attributes.key?(:'last_sync')
        self.last_sync = attributes[:'last_sync']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'license_state')
        self.license_state = attributes[:'license_state']
      end

      if attributes.key?(:'license_tech_support_info')
        self.license_tech_support_info = attributes[:'license_tech_support_info']
      end

      if attributes.key?(:'register_expire_time')
        self.register_expire_time = attributes[:'register_expire_time']
      end

      if attributes.key?(:'register_initial_time')
        self.register_initial_time = attributes[:'register_initial_time']
      end

      if attributes.key?(:'register_next_time')
        self.register_next_time = attributes[:'register_next_time']
      end

      if attributes.key?(:'registration_status')
        self.registration_status = attributes[:'registration_status']
      end

      if attributes.key?(:'renew_failure_string')
        self.renew_failure_string = attributes[:'renew_failure_string']
      end

      if attributes.key?(:'smart_account')
        self.smart_account = attributes[:'smart_account']
      end

      if attributes.key?(:'sync_status')
        self.sync_status = attributes[:'sync_status']
      end

      if attributes.key?(:'virtual_account')
        self.virtual_account = attributes[:'virtual_account']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'customer_op')
        self.customer_op = attributes[:'customer_op']
      end

      if attributes.key?(:'iwo_customer_op')
        self.iwo_customer_op = attributes[:'iwo_customer_op']
      end

      if attributes.key?(:'iwo_license_count')
        self.iwo_license_count = attributes[:'iwo_license_count']
      end

      if attributes.key?(:'licenseinfos')
        if (value = attributes[:'licenseinfos']).is_a?(Array)
          self.licenseinfos = value
        end
      end

      if attributes.key?(:'smartlicense_token')
        self.smartlicense_token = attributes[:'smartlicense_token']
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
      class_id_validator = EnumAttributeValidator.new('String', ["license.AccountLicenseData"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["license.AccountLicenseData"])
      return false unless object_type_validator.valid?(@object_type)
      default_license_type_validator = EnumAttributeValidator.new('String', ["Base", "Essential", "Standard", "Advantage", "Premier", "IWO-Essential", "IWO-Advantage", "IWO-Premier"])
      return false unless default_license_type_validator.valid?(@default_license_type)
      highest_compliant_license_tier_validator = EnumAttributeValidator.new('String', ["Base", "Essential", "Standard", "Advantage", "Premier", "IWO-Essential", "IWO-Advantage", "IWO-Premier"])
      return false unless highest_compliant_license_tier_validator.valid?(@highest_compliant_license_tier)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["license.AccountLicenseData"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["license.AccountLicenseData"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_license_type Object to be assigned
    def default_license_type=(default_license_type)
      validator = EnumAttributeValidator.new('String', ["Base", "Essential", "Standard", "Advantage", "Premier", "IWO-Essential", "IWO-Advantage", "IWO-Premier"])
      unless validator.valid?(default_license_type)
        fail ArgumentError, "invalid value for \"default_license_type\", must be one of #{validator.allowable_values}."
      end
      @default_license_type = default_license_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] highest_compliant_license_tier Object to be assigned
    def highest_compliant_license_tier=(highest_compliant_license_tier)
      validator = EnumAttributeValidator.new('String', ["Base", "Essential", "Standard", "Advantage", "Premier", "IWO-Essential", "IWO-Advantage", "IWO-Premier"])
      unless validator.valid?(highest_compliant_license_tier)
        fail ArgumentError, "invalid value for \"highest_compliant_license_tier\", must be one of #{validator.allowable_values}."
      end
      @highest_compliant_license_tier = highest_compliant_license_tier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          account_id == o.account_id &&
          agent_data == o.agent_data &&
          auth_expire_time == o.auth_expire_time &&
          auth_initial_time == o.auth_initial_time &&
          auth_next_time == o.auth_next_time &&
          category == o.category &&
          default_license_type == o.default_license_type &&
          error_desc == o.error_desc &&
          group == o.group &&
          highest_compliant_license_tier == o.highest_compliant_license_tier &&
          last_renew == o.last_renew &&
          last_sync == o.last_sync &&
          last_updated_time == o.last_updated_time &&
          license_state == o.license_state &&
          license_tech_support_info == o.license_tech_support_info &&
          register_expire_time == o.register_expire_time &&
          register_initial_time == o.register_initial_time &&
          register_next_time == o.register_next_time &&
          registration_status == o.registration_status &&
          renew_failure_string == o.renew_failure_string &&
          smart_account == o.smart_account &&
          sync_status == o.sync_status &&
          virtual_account == o.virtual_account &&
          account == o.account &&
          customer_op == o.customer_op &&
          iwo_customer_op == o.iwo_customer_op &&
          iwo_license_count == o.iwo_license_count &&
          licenseinfos == o.licenseinfos &&
          smartlicense_token == o.smartlicense_token && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, account_id, agent_data, auth_expire_time, auth_initial_time, auth_next_time, category, default_license_type, error_desc, group, highest_compliant_license_tier, last_renew, last_sync, last_updated_time, license_state, license_tech_support_info, register_expire_time, register_initial_time, register_next_time, registration_status, renew_failure_string, smart_account, sync_status, virtual_account, account, customer_op, iwo_customer_op, iwo_license_count, licenseinfos, smartlicense_token].hash
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
