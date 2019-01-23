require 'spec_helper'
Awspec::Stub.load 'redshift'

describe redshift('dwh-dev-cluster') do
    it { should exist }
    it { should be_ok }
    it { should be_healthy }
    it { should be_ready }
    it { should be_available }
    it { should belong_to_vpc("vpc-c8ec75a3") }
    it { should have_security_group("sg-5a6b7cd8") }
    it { should have_security_group('group-name-sg') }
    it { should have_security_group('my-db-sg') }
    it { should belong_to_cluster_subnet_group('datawarehouse-subnet-group')}
    its(:vpc_id) { should eq 'vpc-ab123cde' }
    its(:db_name) { should eq 'datawarehouse' }
    its(:availability_zone) { should eq 'ap-southeast-2c' }
    its(:number_of_nodes) { should eq 1 }
    its(:encrypted) { should eq true }
    its(:node_type) { should eq 'dc2.large' }
    its('endpoint.address') { should eq 'datawarehouse.abcdefghc3li.ap-southeast-2.redshift.amazonaws.com'}
end
