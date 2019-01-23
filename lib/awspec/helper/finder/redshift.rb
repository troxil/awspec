module Awspec::Helper
    module Finder
      module Redshift
            def find_redshift_cluster(id)
                begin
                    # By id
                    res = redshift_client.describe_clusters({
                        cluster_identifier: id
                    })
                rescue
                    # by Name tag
                    res = redshift_client.describe_clusters({
                        filters: [{ name: 'tag:Name', values: [id] }]
                    })
                end
                res.clusters.first if res.clusters.count == 1
            end   
        end
    end
end