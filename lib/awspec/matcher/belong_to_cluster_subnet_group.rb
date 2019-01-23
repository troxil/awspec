RSpec::Matchers.define :belong_to_cluster_subnet_group do |db_subnet_group_name|
  match do |type|
    return true if type.resource_via_client[:cluster_subnet_group_name] == db_subnet_group_name
  end
end
