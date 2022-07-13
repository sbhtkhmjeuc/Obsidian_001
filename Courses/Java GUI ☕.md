# Java GUI ☕

Last modified: April 7, 2022 5:59 PM
Priority: Important
Progress: Done
Subject: Java Swing, Programming
URL: https://www.youtube.com/watch?v=Kmgo00avvEw&t=708s

# Rules:

- When you are creating a component inside of a constructor and want to use it inside of  another method, you need to create the component globally.
- When you want to use the `actionPreformed()` method on a component you need to have a `ActionListerner` active in that component.

## Frames

`import javax.swing.Jframe` - importing the Swing library.

`Jframe frame = new Jframe()` - Create a new instance of a frame.

`frame.setSize(int x, int y)` - Set the size of the window.

`frame.SetTitle(String NAME_AT_TITLE)` - Setting a name at the title of the window.

`frame.setDefaultCloseOperation(Jframe.EXIT_ON_CLOSE)` - when you click on the X bottom of the window, the program will eliminate it from the screen but it will still run in the background, To kill it entirely we need to write this line of code.

`frame.setResizeable()` - you can eliminate the option for the user to change the demotions of the window.  

`frame.setVisible(true)` - you have to tell the program to run the window, and you do this by this line of code.

`ImageIcon image = new ImageIcon(”image.jpg”)` - you can change the Icon that will be displayed in the window. 

`frame.getContnetPane().setBackground(new Color(123,50,250))` - this line will change the Background color of the window panel.   

## Labels

Before you work with labels you need to have a frame

Label - is a GUI display area for Text and image. Just like Frames you’ll need to import the library, and define the Label variable.

`import javax.swing.Jlabel` & `Jlabel label = new Jlabel()`

`label.setText(”TEXT”)` - setting text into the label 

`frame.add(label)` - adding the label into the frame window

`ImageIcon image = new ImageIcon ()` - create an image icon object

`label.setIcon(image)` - adding the image to the label

`label.setHorizontalTextPosition(Jlabel.CENTER)` - setting the Text LEFT, CENTER or Right relative to the image in the Horizontal Axis

`label.setVerticalTextPosition(Jlabel.CENTER)` - setting the Text LEFT, CENTER or Right relative to the image in the Vertical Axis

`label.setForeground(Color.green | new Color (HEX or RGB))` - changing the color of the text 

`label.setFont(new Font(”FONT_NAME”),Font.ATTRIBUTE,SIZE)` - change the font, adds an attribute to it (like underline) and a size.

`label.setIconTextGap(NUMBER)` - set a gap from text to image. (Van be used with negative numbers and pull things closer)

`label.setBackground(Color.black)` - sets the background of the label to Black, this won’t work cause you have to set `label.setOpaqe(true)` , display the color change. 

<aside>
💡 If you didn’t restrict the label, it will take a much space a possible inside the frame

</aside>

`Border border = BorderFactory.createLineBorder(Color.green,3)` - set a border with width of 3.

`label.setBorder(border)` - sets the border to the label.

`label.setVerticalAlignment(Jlabel.LOCATION)` - move around the label in the frame, Vertically.

`label.setHorisonatlAlignment(Jlabel.LOCATION)` - moves around the label in the frame, Horizontally.

To change that the label won’t take all the space in the frame, you need to change in the frame the Layout Manger to NULL → `frame.setLayout(null)` , but once you are going to do that, the label is going to disappear from the frame, To repairer it  you need to set to the label bounds → `label.setBounds(X, Y, WIDTH ,HEIGHT)` , the X & Y are coordinates inside the frame, The Width and the Height are for the label itself. 

`frame.pack()` - this will resize the frame accordingly to fit all the labels in it.  You need to add all the components before using the pack method.

## Panels

Cheat Sheet for Java Swing- 

[neonknightoa_java-swing-gui.bw.pdf](Java%20GUI%20%E2%98%95%208389a032b5c44fa098915f585b4d3ef2/neonknightoa_java-swing-gui.bw.pdf)

are like a frame inside a frame, you can use them to separate all of the components inside the frame. 

because you are going to set manually all of the panel inside the frame, we need to set the layout of the frame to NULL `frame.setLayout(NULL)`  

`JPanel panel = new JPanel();` - to create a new panel 

`panel.setBounds(X, Y, Width, height)` - setting the panel inside the frame.

`frame.add(panel)` - adding the panel to the frame

`panel.add(component)` - to add a component to the panel

the panel is using a **Flow Layout**, which means that as you will add more components it will fill the row, and only after the row is filled it will drop a row and fill it.  

You can change the layout of the container by typing `panel.setLayout(new BorderLayout())`, and set label alignment manually by typing `label.setVeticalAlignment(Jlabel.SIDE)` & `label.setHorizintalAlignment(Jlabel.SIDE)`, to set the label inside of the panel. You can set the label exactly when you want it in the panel by using the `panel.setLayout(NULL)` and set a bounds for the label inside the panel by typing `label.setBounds(X, Y, Width, height)`. 

## Buttons

To Make a Button, you’ll set a label in a frame the has a listener to the mouse for a click.

`JButton button = new JButton()` - setting the new button.

<aside>
💡 Don’t Forget to add the button to the frame, by using the `frame.add(button)`

</aside>

to make the Button to do something, he need to implement from the `ActionListerner` Class, the overridden `actionPreformed(ActionEvent e)` Method. 

to tell the method that it’s our button that is clicked, you need to write inside of the method : `if (e.getSource() == button){ ... }`, and inside of the if statement, you will to write the action when the button in pushed. But for the button to do what is actually he is needs to do, you need to pass the button action to the method `button.addActionListener(this)`, by `this` the program refers to the button inside the constructor. 

`button.setText(string that will be on the button)` - to set a text on the button, but when you are setting  a text on the button, it will appear “focused” (with a border around it), to get rid of it you need to type `button.setFocused(False)`. To Change the text positioning in the button, you can use the `button.setHorizontalTextPosition(JButton.SIDE)` & `button.setVerticalTextPosition(JButton.SIDE)`.

To disable a button you need to type `button.setEnabled(false)`.

## Border Layout Managers

There are 3 Major Managers :

- **Border Layout** - you can attach the components into five areas : North, South, West, East, Center.
    
    How to set a Border Layout - `frame.setLayout(new BorderLayout())`
    
    you can type inside of the `new BoraderLayout()` the margin that you want to each component in the horizontal axis and vertical.
    
- **Flow Layout** - place components in a row, sized at their preferred size, if the horizontal space is too small, it will jump to the next row.
    
    To set the layout to Flow - `frame.setLayout(new FlowLayout())` 
    
    inside of the `new FlowLayout()`, you can align the component in the window to every side that you want, For example `frame.setLayout(new FlowLayout(FlowLayout.LEADING))` this will set the components to lead from the left.
    
    you can also deliver numbers that will determined the space between the components. (the first number is the horizontal spacing, and the second one is the vertical spacing)
    
    <aside>
    💡 Set the `frame.setVisibility()` on the end of the code.
    
    </aside>
    
- **Grid Layout** - grid of cells, each cell is the same size as the others, and each cell takes all the available size within the cell.
    
    `frame.setLayout(new GridLayout(Rows,Columns,Horozintal Margin, Vertical Margin))` - changing the layout of the frame.
    

## JLayeredPane

*Definition* : the Z-Dimension

`JLayerdPane layerpane = new JLayerdPane ()` Creating a new JLayeredPanel.

<aside>
💡 Make Sure that the `frame.setLayout(Null)`

</aside>

<aside>
💡 Don’t Forget to add the JLayeredPane to the Frame

</aside>

`layerpane.setBounds(X, Y, Width, Height)` - setting the bounds for the this pane.

![Untitled](Java%20GUI%20%E2%98%95%208389a032b5c44fa098915f585b4d3ef2/Untitled.png)

in the image above is built with a Labels over a JLayeredPane over a JFrame. (The window itself is JFrame, so every time you have to start with the JFrame)

There are layer inside of the Java Swing with names that you can attach to each label and order them in the Z-axis. You can use the names of them (in the image below) by typing inside of the adding method `,JlayerdPane.DEFALUT_LAYER`, or you can use a number by typing, `,Integer.valueOf(NUMNER)`, the more bigger the number the more it will be in front. 

![Untitled](Java%20GUI%20%E2%98%95%208389a032b5c44fa098915f585b4d3ef2/Untitled%201.png)

## Open a New Window

When you want to open a new window, you need to create an instent inside of your class, and set the `actionPerformed` method to have the new instent of this new window class the you want. 

**That means that every class is a window.** 

if you want the window with the button, to disappear after the got clicked, you can add in the `actionPerformed()` method `frame.dispose()`

after you lunch the window with the button, you will be able to click the button again and again. (you can use a flag to disable this)

## JOptionPane

*Definition* -  Dialog Pop Up

`JOptionPane.showMessageDialog()` - a New Pop Up Dialog. 

there are three showMessageDialog Methods where each gets a different arguments. this one is going to use `parentComponent, Message, Title, MessageType`. 

`JOptionPane.showConfirmDialog()` - have also `parentComponent, Message, Title, MessageType`, can have an answer from the user. You can store the answer inside of a variable. 

 `JOptionPane.showInputDialog()` - have a option for the user to type a string. Can be moved into a string variable.

`JOptionPane.showOptionDialog()` - the arguments are `parentCoponent, message, title, optionType, messageType, icon, options, initialValue` , you can you own values as an answers to this pop up, by creating an array of strings, and pass it in the `options` argument.

### Message Types

`JOptionPane.PLAIN_MESSAGE` - a regular pop up

`JOptionPane.INFORMATION_MESSAGE` - just like the PLAIN but have a “information icon in the side” 

`JOptionPane.QUESTION_MESSAGE` - just like the PLAIN but have a “question icon in the side”

`JOptionPane.WARNING_MESSAGE` -  just like the PLAIN but have a “warning icon in the side”

`JOptionPane.ERROR_MESSAGE` - just like the PLAIN but have a “error icon in the side”

`JOptionPane.YES_NO_CANCEL_OPTION` - have a button for the user to answer.

## Text Fields -

*Definition* - text component that can be used to add, set or get text.

**you can use the text field inside of a frame.**

`JTextField textField = new JTextField()` - creating a new Text Field.

`textField.setPreferredSize(new Demension(Width, Height))` - setting the size

<aside>
💡 Don’t Forget to add the `textFiled` to the Frame

</aside>

if you want to use a button of a textField inside of the `actionPerformed()` method, you need to declare them outside of the contractor.

## CheckBoxes

## Radio Buttons

`JRadioButton RadioButton = new JRadioButton()` - creating a new Button. (this is each button, so when you have a lot of options you need to create the same amount of buttons).

<aside>
💡 You Need to add then to the Frame One-By-One

</aside>

To have the ability to select only one option, you need to add all of the options into a `ButtonGroup`. 

`ButtonGroup group = new ButtonGroup()` - Creating a new Group

`group.add(RadioButton)` - adding a Radio Button to a group.

Each time you click a Radio Button, an action is being triggered, you can use `actionPerformed()` to detect which button was selected.

<aside>
💡 When you use the `actionPerformed()`, remember to add `addActionListener()` to each button.

</aside>

## Combo Boxes

`JComboBox comboBox = new JComboBox (ARRAY)` - creating a new Combo Box, The array that you pass in, are the values that you can choose from in the drop down list, the array is a **string array**.

<aside>
💡 Don’t Forget to add the Combo box to the Frame

</aside>

### **Methods for Combo Boxes**

**Combo Boxes only works with Strings Arrays** 

`comboBox.setEditable()` - the user can edit the options of the combo box.

`comboBox.getItemCount()` - returns the number of items. 

`comboBox.addItem()` - adding an item to the end of the options

`comboBox.insertItemAt(OPTION,INDEX)` - adding an option to a specific index

`comboBox.setSelectedIndex(INDEX)` - set a default selection as the index that was inserted.

## Sliders

you have to import these:

```java
import java.awt.*;
import java.swing.*;
import javax.swing.event.*;
```

you need to create a new class and have it implement `ChangeListener`, to be able to work with the slider.

`JSlider slider = new JSlider(MIN, MAX, STARTING POINT)` - creating a new slider, you can set the boundaries of the slider inside of the constructor.

`slider.setPreferedSize(new Dimension(Height, Width))` - setting the size of the slider in the panel.

`slider.setMinorTickSpacing(SPACE)` - setting the minor ticks on the slider bar (the little tick on the bar).

`slider.setMajorTickSpace(SPACE)` - setting the space between the major ticks (the more bigger ticks)

`slider.setPaintLabels(True)` - setting a labels to each of the major ticks

`slider.setPaintTicks(True)` - setting the Ticks Color.

 `slider.setOrientation(SwingConstants.VERTICAL)` - changing the orientation of the slider to vertical.

`slider.addChangeListener(slider | this)` - triggering the `stateChanged` method to display the slider value.