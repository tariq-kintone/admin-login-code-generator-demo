import 'package:admin_login_code_generator/pages/code_text_field.dart';
import 'package:flutter/material.dart';

class CodeCopyPage extends StatelessWidget {
  const CodeCopyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Generated"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: CodeTextField(code: css, labelText: "CSS"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: CodeTextField(code: html, labelText: "HTML"),
            ),
            CodeTextField(code: js, labelText: "JAVASCRIPT")
          ],
        ),
      ),
    );
  }
}

const js = """
function myFunction() {
  let text;
  let user = prompt("Please enter your name:", "Your First Name");
  if (user == null || user == "") {
    text = "User cancelled the prompt.";
  } else {
    text = "Hello " + person + "! How are you?";
  }
  document.getElementById("Prompt Example").innerHTML = text;
}
""";

const html = """
<form action="#" method="post">
  <div>
     <label for="name">Text Input:</label>
     <input type="text" name="name" id="name" value="" tabindex="1" />
  </div>
  
  <div>
     <h4>Radio Button Choice</h4>
  
     <label for="radio-choice-1">Choice 1</label>
     <input type="radio" name="radio-choice-1" id="radio-choice-1" tabindex="2" value="choice-1" />
  
   <label for="radio-choice-2">Choice 2</label>
     <input type="radio" name="radio-choice-2" id="radio-choice-2" tabindex="3" value="choice-2" />
  </div>
  
  <div>
  <label for="select-choice">Select Dropdown Choice:</label>
  <select name="select-choice" id="select-choice">
    <option value="Choice 1">Choice 1</option>
    <option value="Choice 2">Choice 2</option>
    <option value="Choice 3">Choice 3</option>
  </select>
  </div>
  
  <div>
  <label for="textarea">Textarea:</label>
  <textarea cols="40" rows="8" name="textarea" id="textarea"></textarea>
  </div>
  
  <div>
    <label for="checkbox">Checkbox:</label>
  <input type="checkbox" name="checkbox" id="checkbox" />
  </div>
  
  <div>
    <input type="submit" value="Submit" />
  </div>
</form>
""";

const css = """
/* ----------- iPhone 6, 6S, 7 and 8 ----------- */
/* Portrait */
@media only screen

and (min-device-width: 375px)

and (max-device-width: 667px)

and (-webkit-min-device-pixel-ratio: 2)

and (orientation: portrait) {

}

/* Landscape */

@media only screen

and (min-device-width: 375px)

and (max-device-width: 667px)

and (-webkit-min-device-pixel-ratio: 2)

and (orientation: landscape) {

}

/* ----------- Google Pixel ----------- */

/* Portrait */

@media screen

and (device-width: 360px)

and (device-height: 640px)

and (-webkit-device-pixel-ratio: 3)

and (orientation: portrait) {

}

/* Landscape */

@media screen

and (device-width: 360px)

and (device-height: 640px)

and (-webkit-device-pixel-ratio: 3)

and (orientation: landscape) {

}
""";
