# a datatype's kind is what follows its parameters, and an arrow is not a
# kind: a D indexed by a Nat is type D<n: Nat> is Type
import Base

type D is Nat -> Type:
  C{}

#|SOME PROOFS FAIL
#|Error:
#|- expected : a kind (type D<..> is Kind(g))
#|- observed : @_:Nat -> Type
#|Location: D
#|4 | 
#|5>| type D is Nat -> Type:
#|  |           ^^^^^^^^^^^
#|6 |   C{}
#|exit 1
