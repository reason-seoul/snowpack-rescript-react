type root

@bs.val @bs.return(nullable)
external getElementById: string => option<Dom.element> = "document.getElementById"

@bs.module("react-dom")
external createRoot: Dom.element => root = "unstable_createRoot"

let createRootWithId = id =>
  switch getElementById(id) {
  | None => None
  | Some(element) => Some(createRoot(element))
  }

@bs.module("react-dom")
external createBlockingRoot: Dom.element => root = "unstable_createBlockingRoot"

let createBlockingRootWithId = id =>
  switch getElementById(id) {
  | None => None
  | Some(element) => Some(createBlockingRoot(element))
  }

@bs.send external render: (root, React.element) => unit = "render"
