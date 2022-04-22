package bbxtest

import (
	"github.com/stretchr/testify/assert"
	a "github.com/x19290/go.silly-mod"
	b "github.com/x19290/go.silly-mod/1testdata"
	"testing"
)

func Test(t *testing.T) {
	assert.Equal(t, b.Version, a.Public())
}
