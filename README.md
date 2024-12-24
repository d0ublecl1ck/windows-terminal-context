# Windows Terminal Context Menu

Add "Open in Terminal" to your Windows right-click context menu.

[中文文档](README_zh.md)

## Usage

1. Download both `.bat` files
2. **Right click** -> **Run as administrator** to execute the scripts
   - `add_cmd_context_menu.bat`: Add the context menu
   - `remove_cmd_context_menu.bat`: Remove the context menu

## Features

- Adds "Open in Terminal" option when right-clicking:
  - On folders
  - On empty space in folders
- Opens CMD in the selected directory
- Requires administrator privileges to modify registry
- Easy to remove with the provided script

## ⚠️ Note

These scripts modify the Windows Registry. Make sure to run them with administrator privileges. 