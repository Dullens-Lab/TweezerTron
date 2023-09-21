Howto install PI GCS LabVIEW x64 driversets
-------------------------------------------

1. Backup all existing PI LabVIEW folders and their contents, e.g by copying them on a USB stick, and delete them from your hard disk afterwards. According folders are located in c:\Program Files (x86)\PI\<CONTROLLER_NAME>\GCS_LabView\ or c:\Program Files\PI\..., or c:\Documents and Settings\All Users\Documents\PI\... or c:\Users\Public\Documents\PI\ depending on the product and your operating system version.

2. Extract the attached GCSLabVIEW ZIP file to c:\Users\Public\Documents\PI\<CONTROLLER_NAME>\.

3. Run c:\Users\Public\Documents\PI\<CONTROLLER_NAME>\DLL_Versions\setup_win64.bat. This will install all necessary DLLs.

4. The PI LabVIEW x64 driverset is located in c:\Users\Public\Documents\PI\<CONTROLLER_NAME>\GCS_LabVIEW\. You can delete the folder c:\Users\Public\Documents\PI\<CONTROLLER_NAME>\DLL_Versions\ now.

5. Download the PI Update Finder from http://update.pi-portal.ws/ and run it. Follow the instructions and install any further updates if required.


   
Troubleshooting
---------------

- Verify the DLL version if the Sub-VIs within a PI driverset are not executable (broken arrow), i.e. open c:\Users\Public\Documents\PI\<CONTROLLER_NAME>\GCS_LabVIEW\Low Level\, right-click on GCSTranslator.dll and select "Properties". The "file description" must match your system, "Win32" for 32-bit and "x64" for 64-bit. 