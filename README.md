# Elixir Unexpected Process Termination Bug

This repository demonstrates a subtle bug in Elixir related to the use of `Process.each` and `Process.exit` within an anonymous function.  The `Process.exit` call unexpectedly terminates the entire process instead of just the iteration within the `Enum.each`. The solution demonstrates how to handle this situation correctly.

**Bug:** The original code uses `Process.exit` within `Enum.each` to prematurely stop iteration if a specific condition is met. However, this terminates the entire process, unlike other languages where it might only stop the loop.

**Solution:** The solution shows a more robust approach that avoids unintended process termination.