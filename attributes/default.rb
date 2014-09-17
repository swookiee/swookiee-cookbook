default[:swookiee] = {
    :gc => "-XX:+UseG1GC",
    #In case you are not using not Java8
    #:memory => "-XX:MaxPermSize=512m -Xms32m -Xmx1024m",
    :memory => "-Xms32m -Xmx1024m",
    :dropin_location => "/opt/swookiee/bundles",
    :version => "0.0.1",
    :build => "39"
}
