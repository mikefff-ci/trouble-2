package main

import (
  "runtime"
  "log"
	"testing"
  "golang.org/x/crypto/ssh"
)

func TestSimple(t *testing.T) {
decKey := []byte(`-----BEGIN RSA PRIVATE KEY-----
MIICWgIBAAKBgFes4BR9hhgAMn2PBO0WlAoWVij2Db8Yki55eaW5mdjdj1TjIcj3
eYFZjca0wVKF4KLIEx8Nu2YUF3AptU+EiraSbDhZoBVVzmu3v8Q0PDBvH26MK7Rh
+VCGy3p4rUwKU3AE4H92C4bs0gLKA9i8ai+yZ0Y/94h0RmboumwhEi8fAgMBAAEC
gYAIfVrtYQI9DLfW5KRreMY4+9S3/qtyF6UADw8ydvhowXuBksTQuvXvCobp+NLH
dOM9n/YKCcBdsBBc8gz2eDUeP5llCeYFEgI2FIJRvEPylOjEfxyP4uniMj1i3A/N
kjnwWohAahvohJe73+Fjt62H+AsPkHenshNN48riH9xTkQJBAJ9z0GYNCDumUwef
b/LXdo2HihVOvf79Yt+zZl4avBfqHkv1YPPMaXActXMchPlebPajO6l94curqdut
CG7oFdUCQQCMwyGLshL9n+dc7abZU/2y/HHSZKCQQVmElFz7FI3EcXHQc+pf3RAS
7PP19H6PcMmHHtKx8CoZMcY0UAj7FOcjAkAEFwNkarcoWIbOrj8/2lj3Hl/jVga3
kKZFmKNqjIMAlge66QtYlYiq0IGy9ytN/icLWHqCSXFOORP9R33s4lUVAkAOOirJ
09XXjLH10o9qp/KchKd8fG8+JVzG6bf8KLerg0vdpdmqls1pHEoMMgoYtW2pGpRx
J7UZls5Ru0UtG4/BAkBFSmZRgKvHyW0l/60HbJaJSH4xFhjnNFOCMt9s/TEps79l
0hhiNYsgjueoRfoJ1eXR6gU3y8cgpt48YcEzFqrB
-----END RSA PRIVATE KEY-----`)
//var decKeyPass nil
log.Print(runtime.Version())
_, err := ssh.ParseRawPrivateKeyWithPassphrase(decKey, nil)
//_, err := ssh.ParseRawPrivateKey(decKey)
if err != nil {
  log.Fatal(err)
}
}
