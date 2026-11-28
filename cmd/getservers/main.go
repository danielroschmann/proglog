package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"net"

	api "github.com/danielroschmann/proglog/api/v1"
	"github.com/danielroschmann/proglog/internal/config"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
)

func main() {
	addr := flag.String("addr", "127.0.0.1:8400", "service address")
	caFile := flag.String("ca-file", config.CAFILE, "path to CA certificate")
	certFile := flag.String("cert-file", config.RootClientCertFile, "path to client certificate")
	keyFile := flag.String("key-file", config.RootClientKeyFile, "path to client key")
	flag.Parse()

	serverName := "127.0.0.1"
	if host, _, err := net.SplitHostPort(*addr); err == nil && host != "" {
		serverName = host
	}

	tlsConfig, err := config.SetupTLSConfig(config.TLSConfig{
		CertFile:      *certFile,
		KeyFile:       *keyFile,
		CAFile:        *caFile,
		ServerAddress: serverName,
	})
	if err != nil {
		log.Fatal(err)
	}

	conn, err := grpc.NewClient(*addr, grpc.WithTransportCredentials(credentials.NewTLS(tlsConfig)))
	if err != nil {
		log.Fatal(err)
	}
	defer conn.Close()

	client := api.NewLogServiceClient(conn)
	ctx := context.Background()

	res, err := client.GetServers(ctx, &api.GetServersRequest{})
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("servers:")
	for _, server := range res.Servers {
		fmt.Printf("\t- %v\n", server)
	}
}
