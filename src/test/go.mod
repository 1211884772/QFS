module mumu.com/test

go 1.21.0

require (
	github.com/cornelk/hashmap v1.0.8
	github.com/hashicorp/raft v1.5.0
	github.com/hashicorp/raft-boltdb v0.0.0-20230125174641-2a8082862702
	github.com/vision9527/raft-demo v0.0.0-20211107043314-272dea3c62a0
	mumu.com/common v0.0.0-00010101000000-000000000000
)

require (
	github.com/armon/go-metrics v0.4.1 // indirect
	github.com/boltdb/bolt v1.3.1 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/hashicorp/go-hclog v1.5.0 // indirect
	github.com/hashicorp/go-immutable-radix v1.0.0 // indirect
	github.com/hashicorp/go-msgpack v0.5.5 // indirect
	github.com/hashicorp/golang-lru v0.5.0 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	golang.org/x/sys v0.0.0-20220503163025-988cb79eb6c6 // indirect
)

replace mumu.com/test => ../test

replace mumu.com/monitor => ../monitor

replace mumu.com/common => ../common
