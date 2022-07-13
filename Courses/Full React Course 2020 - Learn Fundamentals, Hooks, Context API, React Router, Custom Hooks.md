# Full React Course 2020 - Learn Fundamentals, Hooks, Context API, React Router, Custom Hooks

Last modified: March 7, 2022 2:51 PM
Priority: Not important
Progress: In Progress
Subject: React
URL: https://scrimba.com/learn/learnreact

in Order to start writing in react you need to “import” React (**in the easy way**) into your project, do to that you need to write in your HTML page, in the `head` tag :

```
<script crossorigin src="https://unpkg.com/react@17/umd/react.development.js"></script>

<script crossorigin src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"></script>
```

the two scripts tags are letting you use React & React-Dom in your projec.

After you did that you need to add this scrip line:

```
<script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
```

this will let react be used in any JS file that is in type of `text/babel`.

in our JS file now we can write HTML code and render it, using ReactDOM. here is an Example of code that prints in the page a title :

```
ReactDOM.render(<h1>Hello, everyone!</h1>, document.getElementById("root"))
```

Element one by one : 

`ReactDOM.render()` - a function in ReadtDOM, that renders the code in a certain `<div>`. `<h1>Hello, everyone!</h1>` - a code that very like HTML, but **NOT HTML**. `document.getElementById("root")` - Earlier we creates a `<div>` Element in the HTML file and gave it an ID of : `root`, So now this command , tells the computer, to put the code that we wrote Earlier in the `root` of the `<div>` in the document.

Now the Strange Langugae that is looking just like HTML but is not, called JSX, the JSX is createing an objects in JS, that it’s know how to interputing into HTML.

in JSX you can’t pass in two elements in the same command, but you can create a perant element that include many elements of code. just like that :

```
const parent = (<div> ... </div>)
```

and pass it into the command.

We earlier “imported” React in an **Easy** way,