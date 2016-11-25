default[:swookiee] = {
    # In case you are not using Java8
    #:jvm_opts => "-XX:MaxPermSize=512m -Xms32m -Xmx1024m",
    :jvm_opts => "-XX:+UseG1GC -Xms32m -Xmx1024m",
    :dropin_location => "/opt/swookiee/bundles",
    :process_priority => "0",
    :version => "0.1.0",
    :rpm_version => "1.0.16"
}
