Aws.config[:redshift] = {
    stub_responses: {
        describe_clusters: {
            clusters: [
                {
                    cluster_identifier: "datawarehouse",
                    node_type: "dc2.large",
                    cluster_status: "available",
                    master_username: "dbadmin",
                    db_name: "datawarehouse",
                    endpoint: {
                        address: "datawarehouse.abcdefghc3li.ap-southeast-2.redshift.amazonaws.com",
                        port: 5439
                    },
                    cluster_create_time: Time.utc(2018,"dec", 10,05,10,14),
                    automated_snapshot_retention_period: 1,
                    manual_snapshot_retention_period: -1,
                    cluster_security_groups: [],
                    vpc_security_groups: [
                        {
                            vpc_security_group_id: "sg-5a6b7cd8", 
                            status: "active"
                        }
                    ],
                    cluster_parameter_groups: [
                        {
                            parameter_group_name: "default.redshift-1.0",
                            parameter_apply_status: "in-sync"
                        }
                    ],
                    cluster_subnet_group_name: "datawarehouse-subnet-group",
                    vpc_id: "vpc-ab123cde",
                    availability_zone: "ap-southeast-2c",
                    preferred_maintenance_window: "thu1530-thu1600",
                    pending_modified_values: {},
                    cluster_version: "1.0",
                    allow_version_upgrade: true,
                    number_of_nodes: 1,
                    publicly_accessible: false,
                    encrypted: true,
                    cluster_public_key: "ssh-rsa AAAAB3NzaC1ABCABABCABCQDFLFDUKGlzDUZV5asdfabzxcvasdfasdfa who@lols\n",      
                    cluster_nodes: [
                        {
                            node_role: "SHARED",
                            private_ip_address: "10.100.100.100",
                            public_ip_address: "19.54.44.3"
                        }
                    ],
                    cluster_revision_number: "5290",
                    tags: [
                        {
                            key: "Environment", 
                            value: "dev"
                        },
                        {
                            key: "Name", 
                            value: "datawarehouse-cluster"
                        }
                    ],
                    kms_key_id: "arnawskmsap-southeast-21234567312343key/b5009d41-eeaa-401f-1111-00546948aa92",                    
                    enhanced_vpc_routing: false,
                    iam_roles: [],
                    maintenance_track_name: "current",
                    deferred_maintenance_windows: []
                }
            ]
        },
        describe_cluster_parameters: {
            parameters: [
                {parameter_name: "auto_analyze",
                parameter_value: "true",
                description: "Use auto analyze",
                source: "engine-default",
                data_type: "boolean",
                allowed_values: "true,false",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "datestyle",
                parameter_value: "ISO, MDY",
                description: "Sets the display format for date and time values.",
                source: "engine-default",
                data_type: "string",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "enable_user_activity_logging",
                parameter_value: "false",
                description: "parameter for audit logging purpose",
                source: "engine-default",
                data_type: "boolean",
                allowed_values: "true,false",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "extra_float_digits",
                parameter_value: "0",
                description: 
                "Sets the number of digits displayed for floating-point values",
                source: "engine-default",
                data_type: "integer",
                allowed_values: "-15-2",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "max_cursor_result_set_size",
                parameter_value: "default",
                description: "Sets the max cursor result set size",
                source: "engine-default",
                data_type: "integer",
                allowed_values: "0-14400000",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "query_group",
                parameter_value: "default",
                description: 
                "This parameter applies a user-defined label to a group of queries that are run during the same session..",
                source: "engine-default",
                data_type: "string",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "require_ssl",
                parameter_value: "false",
                description: "require ssl for all databaseconnections",
                source: "engine-default",
                data_type: "boolean",
                allowed_values: "true,false",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "search_path",
                parameter_value: "$user, public",
                description: 
                "Sets the schema search order for names that are not schema-qualified.",
                source: "engine-default",
                data_type: "string",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "statement_timeout",
                parameter_value: "0",
                description: 
                "Aborts any statement that takes over the specified number of milliseconds.",
                source: "engine-default",
                data_type: "integer",
                allowed_values: "100-2147483647",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "use_fips_ssl",
                parameter_value: "false",
                description: "Use fips ssl library",
                source: "engine-default",
                data_type: "boolean",
                allowed_values: "true,false",
                apply_type: "static",
                is_modifiable: true},
                {parameter_name: "wlm_json_configuration",
                parameter_value: "[{\"query_concurrency\":5}]",
                description: "wlm json configuration",
                source: "engine-default",
                data_type: "string",
                apply_type: "static",
                is_modifiable: true}
            ]
        },
        describe_cluster_subnet_groups: {
            cluster_subnet_groups: [
                {
                    cluster_subnet_group_name: "datawarehouse-subnet-group",
                    description: "a fun description",
                    vpc_id: "vpc-ab123cde",
                    subnet_group_status: "Complete",
                    subnets:  [
                        {
                            subnet_identifier: "subnet-ab123cde",
                            subnet_availability_zone: {
                                name: "ap-southeast-2a"
                            },
                            subnet_status: "Active"
                        },
                        {
                            subnet_identifier: "subnet-ab123efg",
                            subnet_availability_zone: {
                                name: "ap-southeast-2b"
                            },
                            subnet_status: "Active"
                        },
                        {
                            subnet_identifier: "subnet-ab123hij",
                            subnet_availability_zone: {
                                name: "ap-southeast-2c"
                            },
                            subnet_status: "Active"
                        }
                    ],
                    tags: [
                        {
                            key: "Environment", 
                            value: "dev"
                        },
                        {
                            key: "Name", 
                            value: "datawarehouse-cluster"
                        }
                    ]
                }
            ]
        }
    }
}

Aws.config[:ec2] = {
    stub_responses: {
      describe_vpcs: {
        vpcs: [
          {
            vpc_id: 'vpc-ab123cde',
            tags: [
              {
                key: 'Name',
                value: 'my-vpc'
              }
            ]
          }
        ]
      },
      describe_security_groups: {
        security_groups: [
          {
            group_id: 'sg-5a6b7cd8',
            group_name: 'group-name-sg',
            tags: [
              {
                key: 'Name',
                value: 'my-db-sg'
              }
            ]
          }
        ]
      },
      describe_subnets: {
        subnets: [
          {
            subnet_id: 'subnet-ab123cde',
            tags: [
              {
                key: 'Name',
                value: 'db-subnet-a'
              }
            ]
          },
          {
            subnet_id: 'subnet-ab123efg',
            tags: [
              {
                key: 'Name',
                value: 'db-subnet-b'
              }
            ]
          },
          {
            subnet_id: 'subnet-ab123hij',
            tags: [
              {
                key: 'Name',
                value: 'db-subnet-c'
              }
            ]
          },
        ]
      }
    }
  }
  