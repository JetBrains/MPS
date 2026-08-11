JETBRAINS MPS $version$ README FILE

Thank you for downloading JetBrains MPS!

CONTENTS
    _CodeSignature/     configuration directory for Mac OS X (in Mac Os X distributions only)
	bin/                startup files
	help/               help files
	languages/          packaged languages
	lib/                libraries
	license/            license files
	MacOS/              configuration directory for Mac OS X (in Mac Os X distributions only)
	plugin/             JetBrains MPS plugin for IntelliJ IDEA
	plugins/            plugins for JetBrains MPS
	Resources/          configuration directory for Mac OS X (in Mac Os X distributions only)
	about.txt           software included in JetBrains MPS
	build.number        information about current build
	build.properties    properties of current build
	Info.plist          configuration file for Mac OS X (in Mac Os X distributions only)
	mps.bat             bat-file for starting JetBrains MPS on Windows (may not be present for some distributions)
	mps.sh              sh-file for starting JetBrains MPS on Unix (may not be present for some distributions)
	readme.txt          this file
	releaseNotes.txt    JetBrains MPS $version$ release notes
	samples.zip         sample projects

SYSTEM REQUIREMENTS
    To run JetBrains MPS you need JDK 25 or later.

HOW TO START
    1. Unpack the JetBrains MPS distribution file to whenever you wish to install the program.
       We will refer to this destination location as your {installation home} below.
    2. a) [WINDOWS] Open console window and start mps.bat file, located in {installation home}/bin.
    2. b) [MAC OS X] Execute JetBrains MPS application.
    2. c) [UNIX] Open console window and start mps.sh file, located in {installation home}/bin.
    3. [OPTIONAL] Add the "{installation home}/bin" to your PATH environmental
       variable so that you may start JetBrains MPS from any directory.

HOW TO ADJUST JVM OPTIONS
    1. [MAC OS X]
       If you run JetBrains MPS by clicking on MPS.app folder, you should change Info.plist file,
       located in {installation home}/Contents/ folder. Open it and find a line

       <key>VMOptions</key>

       The line next to this contains JVM options between "string" tags.
       To adjust JVM heap size modify -Xms and -Xmx parameters in it.

       If you run JetBrains MPS with mps.sh script, consider next section.

    2. [OTHER PLATFORMS]
       JVM options are located in {installation home}/bin/mps.vmoptions file.
       To adjust the value of JVM heap size modify the -Xms and -Xmx parameters.

GETTING HELP AND REPORTING ISSUES
    For getting help you can visit the following locations:
    - home page https://www.jetbrains.com/mps/
    - documentation https://www.jetbrains.com/mps/learn
    - issue tracker https://youtrack.jetbrains.net/issues/MPS
    - forum https://platform.jetbrains.com/c/mps

----------------------
Develop with pleasure!
JetBrains MPS Team
