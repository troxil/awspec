module Awspec::Type
    class Redshift < ResourceBase
        attr_reader :id
        
        def initialize(id)
            super
            @id = id
        end

        def resource_via_client
          @resource_via_client ||= find_redshift_cluster(@id)
        end

        STARTING_STATES = %w(creating modifying)
        READY_STATES = %w(available)
        STATES = (READY_STATES + STARTING_STATES)

        STATES.each do |state|
            define_method state.downcase + '?' do
              resource_via_client.cluster_status == state
            end
        end
        
        def has_security_group?(sg_id)
          return true if has_vpc_security_group_id?(sg_id)
          return true if has_vpc_security_group_name?(sg_id)
          return true if has_vpc_security_group_tag_name?(sg_id)
          return true if has_db_security_group_name?(sg_id)
        end

        def has_vpc_security_group_id?(sg_id)
          sgs = resource_via_client.vpc_security_groups
          sgs.find do |sg|
            sg.vpc_security_group_id == sg_id
          end
        end
    
        def has_vpc_security_group_name?(sg_id)
          sgs = resource_via_client.vpc_security_groups
          res = ec2_client.describe_security_groups({
                                                      filters: [{ name: 'group-name', values: [sg_id] }]
                                                    })
          return false unless res.security_groups.count == 1
          sgs.find do |sg|
            sg.vpc_security_group_id == res.security_groups.first.group_id
          end
        end
    
        def has_vpc_security_group_tag_name?(sg_id)
          sgs = resource_via_client.vpc_security_groups
          res = ec2_client.describe_security_groups({
                                                      filters: [{ name: 'tag:Name', values: [sg_id] }]
                                                    })
          return false unless res.security_groups.count == 1
          sgs.find do |sg|
            sg.vpc_security_group_id == res.security_groups.first.group_id
          end
        end
    
        def has_db_security_group_name?(sg_id)
          sgs = resource_via_client.db_security_groups
          sgs.find do |sg|
            sg.db_security_group_name == sg_id
          end
        end
      


        def ok?
          READY_STATES.include?(resource_via_client.cluster_status)
        end

      alias_method :healthy?, :ok?
      alias_method :ready?, :ok?

    end
  end
  