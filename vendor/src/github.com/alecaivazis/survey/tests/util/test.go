package TestUtil

import (
	"fmt"

	"github.com/alecaivazis/survey"
)

type TestTableEntry struct {
	Name   string
	Prompt survey.Prompt
}

func RunTable(table []TestTableEntry) {
	// go over every entry in the table
	for _, entry := range table {
		// tell the user what we are going to ask them
		fmt.Println(entry.Name)
		// perform the ask
		answer, err := survey.AskOne(entry.Prompt)
		if err != nil {
			fmt.Printf("AskOne on %v's prompt failed: %v.", entry.Name, err.Error())
			break
		}
		// show the answer to the user
		fmt.Printf("Answered %v.\n", answer)
		fmt.Println("---------------------")
	}
}
