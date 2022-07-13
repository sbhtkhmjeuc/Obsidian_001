# Learn HTML5 and CSS3 From Scratch - Full Course

Last modified: March 7, 2022 2:52 PM
Priority: Not important
Progress: Done
Subject: CSS, HTML, Programming
URL: https://codepen.io/sbhtkhmjeuc/pen/OJxaQmB

# HTML

### Comment For using notes in your code, `<!-- Comment-->`.

### Heading Tags

Used to set differant sizes for text, there are 6 sizes from 1-6 (From bigger to smaller). they look like that : `<H1></H1>`.

If you need domie text to work with just type `lorem` and the editor will give you a text to work with.

### Paragraphs

To seprate a paragraph into two. you just type `<p>` between the text you want to devide, you can also just deivde them using the full paragraph syntex `<p></p>` to each paragraph.

`<br>` - pushes the text one line below (each one is a line, can be used multiple times). `<hr>` - “Horizontal Line” `&nbsp` - “Not Breaking Space”, like hitting the space one time.

### Text Formatting

`<b></b>` - Bolding `<i></i>` - Italic `<sub></sub>` - Subscript `<sup></sup>` - Superscript `<small></small>` - Small `<big></big>` -Big `<ins></ins>` - inserted (underlined) `<del></del>` - deleted (line on it) `<mark></mark>` - Marking

### Links & Images

**Links** - you start with `<a></a>`, this will set the text in the hyperlink. than you set in the opening tag `herf = "http://..."`, which is “Hypertext Referance” that needs to be equal to the link of the website the the hyperlink needs to refere to.

For Example : `<a href = "http://www.google.com">Google's Home Page</a>`

If you want the hyperlink to open another tab seperate for your page you need to add an atribute in the `<a>` tag : `target = _black`

A download link is the same like the hyperlink, but in the `href = ""` you need to place the link, you can set the location of your file if it’s on the computer, you can also set there the download link like this : `<a href = "meme.jpg">Downlaod a meme</a>`

When you are downloading a file the atribute `download = "NAME_OF_FILE"` will give the file a name.

**Images** to add images you can use the `<img>` tag, you need to add the atribute `src = ""` to include the source of the image. Like This: `<img src = "image.jpg">` you can adjust the image using atributes like `height = NUMBER` and `width = NUMBER`, you can use a differant sizes in the image sizes (% - if you using % the image will increase or Dereace in size when the window of the browser is changing).

`alt` atribute is for representing and alternate text in case the image is not loading.

if you want eh image to function like a hyperlink, you can do that by declering an image as usuall, after that you need to set an `<a></a>` around it, with a `href =""` atribute to where it would pass the user.

### Lists

`<li></li>` - List Item `<ul></ul>` - Unordered List `<ol></ol>` - Ordered List `<dl></dl>` - Description List

==CSS : if you want to change the the style of the Bullet points you can add to the Un-ordered list tag a CSS atribute `<ul style="list-style-type:WORD">` the `WORD` can be circels, squares and more.==

In you Ordered list you can change the numbering to letter with an atribute called `type =""`, in the "" you put the first letter of the language that you want to the list to numbered on. You can also start from a different number with the an atribute called `start = ""`, in the "" you put the number that you want to start counting from.

Unlike the Un-ordered and Ordered list, Description list’s item is `<dt></dt>`, if you want a Description for an item, after the item you put `<dd></dd>`.

### Tables

`<table></table>` - Table Tag. `<tr></tr>` - Table Row `<td></td>` - Table Data (Getting into the Table Row. Not Bold, To the Left) `<th></th>` -Table Headding (Getting into the Table Row, Bold and Centered)

`border` - and atribtue that goes into the `<table></table>` tag, to create a border to the Table.

if you want to add color to the table row you need to use the atribute `bgcolor = "THE NAME OF THE COLOR"` . you van also use the `bgcolor` atribute in the `<table></table>` to color the border of the table. You can use the `height` and `width` atribute in the table, table row and table data. You can align the text in the table row using the atribute `align =`, after the = you can write `right`, `left` or `center`.

### Audio

==HTML 5 support only : MP3, WAV and OGG==

`<audio></audio>` - an Audio File. (You can use the atribute `controls`, and a Audio player will apper). To add a file to the audio player, you need to use `<source src = "">`. Between the `<audio></audio>` tag you can write a message if the player will not apper.

`loop` - start the audio file over. `muted` - when the user start the audio it would be muted. `autoplay` - the audio will start automatically.

### Video

`<video></video>` - an Video File (You can use the atribute `controls`, and a Audio player will apper). Just like the audio you need a `<source src = "">`. Because it’s a video you can use `heigth` and `width` to control the video player.

`loop` - start the audio file over. `muted` - when the user start the audio it would be muted. `autoplay` - the audio will start automatically.

### Buttons

`<button></button>` - add a Button (what you write between the tags in what going to br written on the button.)

==You can use PHP or JS to set something to this button to do.==

`name = ""` - add name to this button. `type = ""` - the type of the button. `value = ""` - add some value to the button. `disabled` - disabling the button (can not be pressed). `autofocus` - auto focusing the button as the page loades. `onclick` - something is going when the user if pressing that button. (you can use the `alert('')` to display an alert when the button is being pressed.

==CSS - `style = ""` - to change the style of the button (you can write couple of atribute in `style`). `background-color:COLOR` - used to change the background color of a button (need to written in the `style` atribute above). `font-size:` - changes the font of the whole button. `font-family:` - changes the font of the text inside the button.==

### Forms

`<form></form>` - Start a Form (what is written inside these tags id going to display on the screen.) `action = ""` - the action that need to be done when the form is submited (Can use PHP in the ""). `<input>` - an input field, you can use the `type = ""` atribtue to set what the filed would be, you also need to set an `id = "ID"` for the field to use later. you can use `name = ""` (Usually the same as the `id`), most used fot PHP an JS.

you ease the writing for the user, you can surround the text near the input field with `<label></label>` tags, and set a `for = "INPUT_ID"` atribute and Now when the user is clicking on the text near the field it’s going to transfer him automaticly to the filed.

`placeholder = ""` - an initial value inside the field.

**Examples for `type = ""`** `reset` - a reset button. `submit` - asubmit button (will send the info to the page in the `action` atribute in the `<form></form>` tag.) `radio` - redio buttons (when you initially set a redio button you can check tham all at the same time, if you want to get it fix you can use the `name = ""` atribtue to all of them (need to be the same in all of the options), this is setting all of the options in the same group, and you can only select on ot each group.) `email` - for an email (has already all the validations of an email) `birthday` - has a date responsive selecter (you can use the `min =" "` atribute to set a min date or `max =""`). `number` - an input number, in the initial setting you put any number even a negaative (can use a `min =""` and `max= ""`), the `value =""` atribute set an initial value inside the field. `tel` - a telephone field. `password` - a password field (can use a `min =""` and `max= ""`) `range` - sliding scale (can use the `step = ""` that the noble would just in steps, the whole range is 100, you if you want the step to be 5, you need to put 25 in the `step = ""`). `checkbox` - a checkbox. `file` - to upload a file (you can use the `accept` atribute to say which type of file could be uploaded).

`<select></select>` - a dropdown list. `<option></option>` - a item in the dropdown list (include between the `<select></select>` tags, and need to have a `value = ""` to each option, the name of the option that would be displayed needs to be between the `<option></option>` tags). For example : `<option value = "visa">visa</option>`

### Meta Tags

are data about data. these tags are being placed inside of the `<head></head>` tags. metadata has some use for a webengines that lets the search engine and the webpage know what the data in it is about, can control the view port (in an IPhone or a Computer)

`<meta>` - a new Metadata.

`charset = ""` - let the browser know which character set we are using (ascii / Unicode (`UTF-8`)).

`name = ""` - the name `contnet = ""` - what the page is about (For example : HTML,Tutorial,…) For Example : `<meta name="keywords" content="HTML,Tutorial">`

`viewport` - changes the webpage demantions to fit to the device that you are viewing on. Example :`<meta name = "viewport" content = "width=device-width,inital-sacle=1.0">`

auto refresh - `meta http-equiv = "refresh" content = "3">` (in the content you set the amount of seconds that you are want the page to refresh).

### Colors

Background Color - you do this in the `<body></body>` tag, you need to add the `style` atribute, you set in it `background-color:COLOR_NAME/HEX`. For examlpe : `<body style="background-color:red"></body>`

Font color - you do this on the tags of the text, it’s the same. For example : `<h1 style="color:red;backgroung-color:green"></h1>`

==When you are using more than one CSS object, you need to seperate tham with `;`.==

### Span & Div

**Span** `<span></span>` - the Span Tags (can use the `style` atribute)

**Div** `<div></div>` - the Div Tags ( the diffrance between the div and the span, is that the div is starting a new line. Can use the `style` atribute)

# CSS

Syntex : ==Element(Property:value;)== For Example : `H1(color:green;)`

you can include CSS in three ways : - inline : For the elements that is being writing on,`<body style = "backgroung-color:#000000;color:green"></body>` - internal : can include spacific elements (need to written in the `<head></head>`), `<style></style>` - the tags you need to use, inside the tags you put the kind of element that you want to change, for example `p{}` will change all the paragraphs, inside the `{}` you put the properties that you want.

you can also chagne an elemets with a spacific `id` like that : `#ID{}`.

You can also use `class` atribute as a kind of id for a group of elements, you do this just like that : `.CLASS{}`. (you can also use : `p.CLASS`, this is saying that you diract **all of the paragraphs** that are **including in a certian `CALSS`**).

if you want to set multipule elements with the same properties, you can use it like that : `h1,p`, that would include all of the paragraph and the H1 headings. - exteranal - Create a seperate CSS file, to include the file in the HTML file you need to use the `<link>` tag, using the `rel ="stylesheet"` atribute (this specified the relationship between the two files), if you want you can use this atribute `type = "text/css"`, and at the end the `href = "FILE_NAME.css"`.

### Fonts

There are two kinds of Font : Serif and San-Serif

`font-family:"Ink Free","MV Boli",sans-serif;` - the font of the page, there are two fonts becuase if one can open, the browser will go to the next one and will try it. (`sans-serif` - a defult Sans-Serif font) `font-style:` - the style of your font (for example you can write `italic`) `font-weight:;` - the weight of the font (for example you can write : `bold:;`) `font-size:;` - the size of the font (the defult is 16px, but you can change it.) `text-decloration:;` - deceration your font. (for example : `underline blue`) `color:;` - font color.

if you want to add another font you need to `<link>` it in the `<head></head>`, and than decler it inside of your CSS file.

### Borders

`border-style:;` - a border (in it you can use : `solid, dashed,dotted,double,ridge,inset, ...`) `padding:;` - the space between the text and the border. `border-width:;` the width of the border (you can set 4 differant sizes, each size will be the size of a differnat edge around the border, for example : `5px,5px,5px,5px`) `border-color:;` - the color of the border. `border-radius` - desharping the corners of the border. `border-SIDE-PROPERTY` - you can target a side of the border that you want to work on.

### Backgrounds

`background-color:;` -background color (COLOR_NAME/HEX/RBG) `background:liner-gradient(START,FINISH)` - the background color would shift fro, the start color to the finish color in the baclground. to extend the gradient to the end of the page you need to write these 4 commend all together: `background-repeat:no-repeat;` `background-position:center;` `background-size:cover;` `background-attachment:fixed;`

to add an image to your background you need to do this: `background-image:url("NAME_OF_IMAGE.jpg")`, but if you resize the the page window the image is going to repaet itself, to prevent it you need to write : `background-repeat:no-repeat;` `background-position:center;` `background-size:cover;` `background-attachment:fixed;`

### Margins

margins are just like `patting`, but **outside the border**. (you can use px/%) you can spacify a side that you would work on like that : `margin-SIDE:;` you can access the side together in the same statment : `margin:25px 75px 25px 75px;` `auto` - the border will stick to the side.

### Shadows

there are two kinds of shadows : `text-shadow:0px 0px 0px COLOR/HEX/RGB;` - shadow for a text (to add another shadow just add another set of values with a `,` between) `box-shadows:0px 0px 0px COLOR/HEX/RGB ;` - shadow for the border

[[Pasted image 20220114160249.png]]

### Pseudo Class

is a special word that can define a state of an element. For Example : `ELEMENT:STATE{}` `link, visited, hover,active`

### Positioning

`text-alignment:;` - when you make a borader around tham the text will align to the border (`center, left, right`). `float:SIDE` - the elemets whould have it’s on space, and the space that is not used, now would be used. `position:POSITION` - (`fixed, relative, sticky, static (defult), absolut(relative to the ancestor position).`)

### Trasfornation

`transform:PROPERTY;` - the commend for trasfornation

`translateX()`- will move the object a fixed amount of pixles in the X axis (positive number is like moving to the right, and negative number if like moving to the left). `translateY()` - will move the object fixed amount of pixels in the Y axis (positive number is like going Down, and a negative number is like going Up) `translate(X,Y)` - this property will take 2 numbers and will move the object along side the 2 axises. `rotateX(dg)` - the object will rotate in place in the X axis. `rotateY(dg)` - the object will rotate in place in the Y axis. `rotateZ(dg)` - the object will rotate in place in the Z axis. `scaleX(NUMBER)` - the side of the boerder on the X axis will change. `scaleY(NUMBER)` - the side of the boerder on the Y axis will change. `scale(X,Y)` - combanation of the two above. `skewX(dg)` - the object will skew on the X axis `skewY(dg)` - the object will skew on the Y axis `matrix(scaleX,skewY,skewX,scaleY,translateX,translateY)`- combonation of all of the properties.

### Animations

`@keyframes NAME {}` - Declering a new animatoin. `from {} - to {}` - the `from` is the staring position, and the `to` is the ending position. (inside the `{}` you can write the property that you want to change.) if you want to set more complex animations you can `X%` of the time next to the stage of the animation. for exmaple `0%{background-color:red;}`

in the CSS of the object, you will need to write `animation:NAME;`, and `animation-duration:s;` for how much the animation is going to take. if you want the animation to repeat itself you can do that you can write `animation-itration-count:;`- you can put a number or if you want to can write `infinite`.

### Flexbox

```
display:felx;
flex-wrap:wrap; // this means that when you shrink the window the items in the windows will find a space to "run to".
background-color:;
```

### Icons

before you add icons you need to add a `LINK` from a website. `<i></i>` - the tag for icons (be sure to have a `fa` in th start of the icon) to inlarge the icons tou need in the class to write `fa-NUMx` An Example of a icon - `<i class="fa fa-home fa-4x"></i>` you can add a link to the icon with the `<a></a>` around the icon.