package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
)

// Struct pour la version
type Version struct {
	Version string `json:"version"`
	AppName string `json:"app_name"`
}

func healthz(w http.ResponseWriter, r *http.Request) {
	// Répondre avec "I am alive" et un code 200
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("I am alive"))
}

func version(w http.ResponseWriter, r *http.Request) {
	// Créer un objet de version
	versionInfo := Version{
		Version: "v0.0.1",
		AppName: "app_001",
	}

	// Répondre avec l'objet version en format JSON
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(versionInfo)
}

func main() {
	// Définir les routes
	http.HandleFunc("/healthz", healthz)
	http.HandleFunc("/api/version", version)

	// Démarrer le serveur sur le port 7001
	port := ":7001"
	fmt.Printf("Server is running on port %s\n", port)
	log.Fatal(http.ListenAndServe(port, nil))
}
