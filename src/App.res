%%raw(`import './App.css';`)

@bs.module("./logo.svg") external logo: string = "default"

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.js")} </code>
        {React.string(" and save to reload.")}
      </p>
      <button className="App-button" onClick={_ => setCount(count => count + 1)}>
        {React.string("Count: " ++ string_of_int(count))}
      </button>
      <a
        className="App-link"
        href="https://rescript-lang.org/docs/react/latest/introduction"
        target="_blank"
        rel="noopener noreferrer">
        {React.string("Learn ReScript React")}
      </a>
    </header>
  </div>
}
