# LaptopAutomation.py
import pyautogui

class LaptopActionsLibrary:
    """A RobotFramework library for automating laptop actions using pyautogui."""

    def move_mouse(self, x, y):
        """Move the mouse to the specified (x, y) coordinates."""
        pyautogui.moveTo(x, y)

    def click_mouse(self, button="left"):
        """Click the mouse button (left or right)."""
        pyautogui.click(button=button)

    def type_text(self, text, interval=0.1):
        """Type text with an optional interval between each character."""
        pyautogui.write(text, interval=interval)

    def press_key(self, key):
        """Press a single key."""
        pyautogui.press(key)

    def hotkey(self, *keys):
        """Press a combination of keys (e.g., 'ctrl', 'c')."""
        pyautogui.hotkey(*keys)

    def screenshot(self, path="screenshot.png"):
        """Take a screenshot and save it to the specified path."""
        pyautogui.screenshot(path)
