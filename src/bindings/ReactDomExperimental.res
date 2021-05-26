type root

@val @return(nullable)
external getElementById: string => option<Dom.element> = "document.getElementById"

@module("react-dom")
external createRoot: Dom.element => root = "createRoot"

let createRootWithId = id =>
  switch getElementById(id) {
  | None => None
  | Some(element) => Some(createRoot(element))
  }

@send external render: (root, React.element) => unit = "render"
