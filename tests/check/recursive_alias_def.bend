# a type alias may recur through its own arrow (a negative type needs no
# positivity check): F unfolds to F -> F, and Sink to U32 -> Sink, at
# every step. a def at such a type checks, since the checker reads only
# the parameters the def declares, not every arrow the alias unfolds to
import Base

def F() -> Type:
  F -> F

def g() -> F:
  x => x

def Sink() -> Type:
  U32 -> Sink

def keep(s: Sink) -> Sink:
  s

#|ALL PROOFS CHECK
#|Use --verdict for mathematical validity.
