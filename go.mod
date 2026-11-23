module github.com/danielroschmann/proglog

go 1.27

require (
	cloud.google.com/go/compute/metadata v0.9.0 // indirect
	github.com/Knetic/govaluate v3.0.1-0.20171022003610-9aa49832a739+incompatible // indirect
	github.com/fatih/color v1.16.0 // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/btree v1.1.3 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-hclog v1.6.3 // indirect
	github.com/hashicorp/go-immutable-radix v1.3.1 // indirect
	github.com/hashicorp/go-metrics v0.7.0 // indirect
	github.com/hashicorp/go-msgpack v0.5.5 // indirect
	github.com/hashicorp/go-msgpack/v2 v2.1.5 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-sockaddr v1.0.7 // indirect
	github.com/hashicorp/golang-lru v1.0.2 // indirect
	github.com/hashicorp/memberlist v0.7.0 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/miekg/dns v1.1.73 // indirect
	github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529 // indirect
	go.etcd.io/bbolt v1.3.5 // indirect
	go.uber.org/atomic v1.7.0 // indirect
	go.uber.org/multierr v1.6.0 // indirect
	go.yaml.in/yaml/v3 v3.0.5 // indirect
	golang.org/x/net v0.60.0 // indirect
	golang.org/x/sys v0.48.0 // indirect
	golang.org/x/text v0.42.0 // indirect
)

require (
	github.com/casbin/casbin v1.9.1
	github.com/gorilla/mux v1.8.1
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0
	github.com/hashicorp/raft v1.8.0
	github.com/hashicorp/raft-boltdb v0.0.0-20261026132331-73a435c3e2c3
	github.com/hashicorp/serf v0.11.0
	github.com/stretchr/testify v1.12.1
	github.com/travisjeffery/go-dynaport v1.0.0
	github.com/tysonmote/gommap v0.0.3
	go.opencensus.io v0.24.0
	go.uber.org/zap v1.18.1
	google.golang.org/genproto/googleapis/rpc v0.0.0-20260817212433-ac3dfec99bb1
	google.golang.org/grpc v1.85.0
	google.golang.org/protobuf v1.36.12
)

replace github.com/hashicorp/raft-boltdb => github.com/travisjeffery/raft-boltdb v1.0.0
