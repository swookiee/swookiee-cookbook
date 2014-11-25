default[:swookiee] = {
    # In case you are not using Java8
    #:jvm_opts => "-XX:MaxPermSize=512m -Xms32m -Xmx1024m",
    :jvm_opts => "-XX:+UseG1GC -Xms32m -Xmx1024m",
    :dropin_location => "/opt/swookiee/bundles",
    :version => "0.0.4",
    :build => "47"
}
