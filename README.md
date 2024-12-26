# Tcl foreach command error with empty lists

This repository demonstrates a common error in Tcl when using the `foreach` command with lists that might be empty. The `foreach` command will throw an error if the list it iterates over is empty. 

The `bug.tcl` file shows the problematic code.  The `bugSolution.tcl` provides a corrected version.

## Bug
The issue arises when the `get_data` procedure returns an empty list.  The `foreach` loop in `process_data` then attempts to iterate over nothing, resulting in an error.

## Solution
The solution involves checking if the list is empty before processing it using the `llength` command.  If the list is empty, a suitable alternative action (e.g., displaying a message) is performed.