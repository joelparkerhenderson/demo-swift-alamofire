# Create a text view

Create a text view, including constraints and an IBOutlet.


## Open the view

Open the view and safe area:

  * In the left Xcode column, tap the icon **Main.storyboard**.

  * In the next Xcode column, tap the icon **View Controller Scene** → **View Controller** → **View** → **Safe Area**.

  * In the central Xcode column, you see the **View Controller** layout area, and the view's safe area is light blue, which means it is selected.


## Add a text view

Add a text view and type some text:

  * In the lower-right Xcode area, there is a library picker, with four icons that have rollover tool tips: **Show the File Template library**, **Show the Code Snippet library**, **Show the Object library**, **Show the Media library**.

  * Tap the circle icon **Show the Object Library**.

  * Drag-and-drop the **Text View** item to the middle of the View Controller layout area.

  * Xcode creates the text view and fills it with example text that says "Lorem Ipsum...".



## Create constraints

Position the text view by adding contraints.

Top:

  * Control-tap-press the text view, and drag left. This pops up a menu. 

  * Choose **Top Space to Safe Area**. This creates a constraint line from the text view to the top of the safe area.

  * Double-tap the constraint line. This selects it. Set the **Constant** field to **0**.

Bottom:

 * Control-tap-press the text view, and drag down. This pops up a menu. 

  * Choose **Bottom Space to Safe Area**. This creates a constraint line from the text view to the top of the safe area.

  * Double-tap the constraint line. This selects it. Set the **Constant** field to **0**.

Left:

  * Control-tap-press the text view, and drag left. This pops up a menu. 

  * Choose **Leading Space to Safe Area**. This creates a constraint line from the text view to the top of the safe area.

  * Double-tap the constraint line. This selects it. Set the **Constant** field to **0**.

Right:

  * Control-tap-press the text view, and drag left. This pops up a menu. 

  * Choose **Trailing Space to Safe Area**. This creates a constraint line from the text view to the top of the safe area.

  * Double-tap the constraint line. This selects it. Set the **Constant** field to **0**.

Alternate way to set contraint attributes:

  * Tap a constraint line. This selects it.

  * In the Xcode upper right area, ther is an **Inspector** area that has icons for **Show File Inspector**, **Show Quick Help Inpsector**, **Show the Identity Inspector**, **Show the Attributes Inspector**, **Show the Size Inspector**, **Show the Connections Inspector**.

  * Tap the icon **Show the Attributes Inspector**. You should see the attributes.

  * For example, a top contraint shows attributes including a section that says **Top Alignment Contraint**, and you can set the **Constant** field to **0**

Update frames:

  * If Xcode doesn't automatically update the object's layout, then you need to manually update frames.

  * In the central Xcode column, in the lower right area, tap the icon that is a refresh circle arrow, with the tool tip **Update Frames**. Tap it.

  * You see the text view change size to be its correct size, which is flush with the safe area.


## Create the IBOutlet

Look in the right place.

  * Open your storyboard **Main.storyboard**.

  * Tap the **Assistant** button in the Xcode toolbar near the top right corner of Xcode to open the assistant editor.

  * In the editor selector bar, which appears at the top of the assistant editor, the assistant editor text should say **Automatic** → **ViewController.swift**. If the text is different, such as saying **Preview**, then tap the text to change it.

Create a new IBOutlet and connect it.

  * Control-drag from the text view on your canvas to the code display in the editor on the right, stopping the drag at the line below the line that starts with `class ViewController`.

  * A dialog appears, that shows **Connection** is **Outlet**, **Object** is **ViewController**, **Name** is **blank**, **Type** is **UITextView**, **Storage** is **Weak**.

  * In the **Name** field, type **demoTextView**.

  * Tap Connect.

Xcode adds the necessary code.

  * The code looks like this: `@IBOutlet weak var demoTextView: UITextView!`

  * Xcode configures the storyboard to set up the connection.

  * Xcode adds code to ViewController.swift to store a pointer to the text view.


## Aside: if you prefer to use a Text Field

If you prefer to use a Text Field instead of a Text View, then you can generally use the same instructions as above. You can also do the items in this section.

Show the attributes:

  * Tap the text field to select it.

  * If the **Attributes Inpector** is not currently showing, then tap the icon **Show Attributes Inspector**.

Set placeholder text:

  * **Attributes Inpector** → the section **Text Field** → the label **Alignment** → the icon areas for **Horizontal** and **Vertical**.

Control aligment: 

  * Tap the text field to select it.

  * **Attributes Inpector** → the section **Control** → the label **Alignment** → the icon areas for **Horizontal** and **Vertical**.

  * For horizontal alignment, tap the icon **Left**.

  * For vertical alignment, tap the icon **Top**.
