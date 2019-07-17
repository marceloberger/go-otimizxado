package main

import "net/http"


func greeting( x string) string{

	return "<b>" + x + "</b>"
}

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		result := "Code.education Rocks!"

		w.Write([]byte(greeting(result)))
	})
	http.ListenAndServe(":8000", nil)
}

