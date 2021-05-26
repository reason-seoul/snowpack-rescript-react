type root

@module("react-dom")
external createRoot: Dom.element => root = "createRoot"

let createRootWithId: string => option<root>

@send external render: (root, React.element) => unit = "render"
