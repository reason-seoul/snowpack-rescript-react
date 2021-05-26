@module("react")
external useOpaqueIdentifier: unit => string = "unstable_useOpaqueIdentifer"

module MutableSource = {
  module type Config = {
    type source
    type version
    type snapshot
  }

  module Make = (Config: Config) => {
    include Config

    type t

    type getVersion = source => version
    type getSnapshot = source => snapshot
    type subscribe = (source, unit => unit) => option<unit => unit>

    @module("react")
    external make: (source, getVersion) => t = "unstable_createMutableSource"

    @module("react")
    external use: (t, getSnapshot, subscribe) => snapshot = "unstable_useMutableSource"
  }
}
