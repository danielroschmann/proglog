package agent

import (
	"crypto/tls"
	"sync"

	"github.com/danielroschmann/proglog/internal/discovery"
	"github.com/danielroschmann/proglog/internal/log"
	"google.golang.org/grpc"
)

type Agent struct {
	Config

	log        *log.Log
	server     *grpc.Server
	membership *discovery.Membership
	replicator *log.Replicator

	shutdown     bool
	shutdowns    chan struct{}
	shutdownLock sync.Mutex
}

type Config struct {
	ServerTLSConfig *tls.Config
	PeerTLSConfig   *tls.Config
}
