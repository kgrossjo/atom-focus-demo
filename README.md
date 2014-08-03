# focus package

This is just a short demonstration that a keybinding doesn't work on a view that
has been appended with appendToRight.

To reproduce, do this:

* Clone the repo.
* Change to the root directory of your local clone.
* Run `apm link -d`
* Run `atom -d .`
* Via `cmd-shift-P`, invoke the command `focus:toggle`.  You see a div
  on the right that says it's alive.
* Via `cmd-shift-P`, invoke the command `focus:beep`.  You see a beep
  message being added below the "alive" message.
* Now attempt `ctrl-b` to invoke the same command `focus:beep`.  You see
  that the command is not executed.  (Instead, on a Mac, the cursor
  moves to the left by one character.)
* Use the keybinding resolver (cmd-.) and verify that the command
  `focus:beep` is in fact bound to `ctrl-b` but it doesn't get executed.
