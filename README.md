# dotfiles
this is a repository of my dotfiles.

## 1.powershell-cli
![](terminal/powershell-cli.gif)

# 🚀 Enhanced PowerShell Profile (`profile.ps1`)

This profile script significantly enhances the PowerShell command-line experience by configuring modules like **Oh-My-Posh** and **Terminal-Icons**, and by implementing numerous custom key bindings and completion features via **PSReadLine**.

---

## ✨ Features at a Glance

* **Custom Prompt:** Loads a modern, feature-rich prompt theme using Oh-My-Posh.
* **Icon Support:** Integrates Terminal-Icons for displaying file and folder icons.
* **Intelligent Completion:** Adds robust tab-completion for `winget` and `dotnet` CLI tools.
* **Smart Editing:** Implements intelligent pairing and deletion for quotes and braces (like an IDE).
* **Extended History:** Enables a searchable, visual history view (F7) and advanced history recall.
* **Directory Jumps:** Allows setting custom directory marks for instant navigation.

---

## 🛠️ Installation & Setup

### Prerequisites

Ensure the following are installed:

* PowerShell Core (`pwsh`)
* `PSReadLine`
* `Oh-My-Posh`
* `Terminal-Icons`

### Locate Profile

Copy the script content into your PowerShell profile file, typically found at:

```powershell
$PROFILE
```

### Theme Configuration

This script loads a specific Oh-My-Posh theme configuration:

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\1_shell.omp.json" | Invoke-Expression
```

Ensure the specified theme file (`1_shell.omp.json`) exists in your themes directory.

---

## ⌨️ PSReadLine Key Bindings (Custom)

| **Key Binding** | **Brief Description**  | **Functionality**                                                                                                        |
| --------------- | ---------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| `F7`            | Show History Grid      | Opens a searchable Out-GridView window for selecting and inserting previous commands.                                    |
| `Alt+w`         | Save in History        | Saves the current, unexecuted command to history and clears the line.                                                    |
| `Ctrl+V`        | Paste as Here String   | Pastes multiline content from the clipboard as a here-string (`@"..."@`).                                                |
| `Alt+'`         | Toggle Quote Argument  | Cycles the argument under the cursor through: No Quotes, Single Quotes (`'`), and Double Quotes (`"`).                   |
| `Alt+(`         | Parenthesize Selection | Wraps the current selection, or the entire line, in parentheses `()`.                                                    |
| `Alt+%`         | Expand Aliases         | Replaces any aliases (`gci`, `ls`, etc.) on the command line with their full cmdlet name.                                |
| `Alt+a`         | Select Argument        | Cycles and selects arguments on the command line for quick editing.                                                      |
| `F1`            | Command Help           | Opens the documentation for the current command on the line in a new window (`Get-Help -ShowWindow`).                    |
| `RightArrow`    | Accept Next Word       | When at the end of the line, accepts only the next word from the inline suggestion (useful for granular tab-completion). |

---

## 🧭 Directory Jump Marks

| **Key Binding**       | **Brief Description** | **Functionality**                                                                                     |
| --------------------- | --------------------- | ----------------------------------------------------------------------------------------------------- |
| `Ctrl+J` *(then key)* | Mark Directory        | Press `Ctrl+J` followed by a single key (e.g., `a`) to save the current path.                         |
| `Ctrl+j` *(then key)* | Jump Directory        | Press `Ctrl+j` followed by the marked key (e.g., `a`) to instantly navigate (`cd`) to that directory. |
| `Alt+j`               | Show Marks            | Lists all currently set directory marks and their associated paths.                                   |

---

## 💻 Development Macros

These bindings are set up for common `.NET` development tasks:

| **Key Binding** | **Command Executed**                               |
| --------------- | -------------------------------------------------- |
| `Ctrl+Shift+b`  | Clears line, inserts, and executes: `dotnet build` |
| `Ctrl+Shift+t`  | Clears line, inserts, and executes: `dotnet test`  |

---

## 💡 Smart Editing Behavior

The script customizes quote/brace insertion and deletion for a more IDE-like experience:

| **Character/Key**       | **Smart Behavior**                                                                                                                                |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `"`, `'`, `(`, `{`, `[` | **Auto-Pairing:** Inserts the matching closing character and positions the cursor inside the pair.                                                |
| `)`, `]`, `}`           | **Cursor Skip:** If the line already has the correct closing character at the cursor position, it skips over it instead of inserting a duplicate. |
| `Backspace`             | **Auto-Delete Pair:** If the cursor is positioned between a matching pair, it deletes both characters.                                            |

---

## 🧩 Summary

This PowerShell profile script transforms your terminal into a modern, efficient, and developer-friendly environment — combining aesthetics, productivity, and intelligence in one powerful configuration.

