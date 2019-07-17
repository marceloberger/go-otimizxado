package main

import "testing"

func TestSum(t *testing.T) {

		texto := "Code.education Rocks!"
	
		result := greeting(texto)
		expected := "<b>Code.education Rocks!</b>"

	if result != expected {
		
		t.Errorf("Texto nao sao semelhantes to be %s but instead got %s!", result, expected)
		
	}





}