open ReactDomExperimental

switch createRootWithId("root") {
| Some(root) => root->render(<React.StrictMode> <App /> </React.StrictMode>)
| None => ()
}
