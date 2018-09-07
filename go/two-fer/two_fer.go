// Package twofer implement methods for sharing with others
package twofer

import (
    "strings"
)

// ShareWith Someone's name passed on @name :string -> returns :string
func ShareWith(name string) string {
    if len(strings.TrimSpace(name)) == 0 {
        name = "you"
    }
	return "One for " + name + ", one for me."
}
