# Requires -Modules @{ModuleName="ShowUI"; ModuleVersion="1.4"}, @{ModuleName="Ribbon"; ModuleVersion="1.0"}

## The Ribbon control is new in .Net 4.5 and has it's own assembly
## You only have to Add-UIModule once to get the Ribbon module if it doesn't exist:
# Add-UIModule -AssemblyName System.Windows.Controls.Ribbon -Name Ribbon

# Note, the images can be any kind of image, and can be local file paths, 
#  but since they have to exist, I'll use URLs for now

RibbonWindow { 
   Ribbon -QuickAccessToolbar { 
      RibbonQuickAccessToolBar {
         RibbonButton -ToolTip "Button 1" -SmallImageSource "http://huddledmasses.org/images/icons/admin_shell.ico"
      }
   } -Items {
      RibbonTab -Header "Task A" { 
         RibbonGroup -Header "PoshCode" { 
            # The ImageSource needs to be a path to an image...
            RibbonButton -LargeImageSource "http://huddledmasses.org/images/icons/PoshCode.png" -Label "PoshCode"
         }
      }
      RibbonTab -Header "Task B" 
   }
} -Title "My Window" -Show