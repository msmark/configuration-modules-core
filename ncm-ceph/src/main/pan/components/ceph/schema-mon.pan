declaration template components/${project.artifactId}/schema-mon;

@documentation{ ceph monitor config }
type ceph_mon_config = { 
    include ceph_daemon_config
};

@documentation{ ceph monitor-specific type }
type ceph_monitor = { 
    include ceph_daemon
    'fqdn'  : type_fqdn
    'config' ? ceph_mon_config
};

