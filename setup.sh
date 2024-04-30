echo "[+] Setuping stegtool...";
echo "[+] Compiling all source files...";
javac -d . src/isteg/*.java

echo "[+] Generating manifest file and adding contents...";
#echo "Manifest-Version: 1.0\nSpecification-Title: \"iSteg\"\nCreated-By: 0xc0d3r\nMain-Class: iSteg.IStegGUI" > MyManifest.txt
echo -e "Manifest-Version: 1.0 \nClass-Path: .\nMain-Class: isteg.IStegGUI" > MyManifest.txt

echo "[+] Creating archive(.jar) file...";
jar cfm miniproject.jar MyManifest.txt imgs iSteg/
#rm -r iSteg
#rm MyManifest.txt
chmod a+x miniproject.jar
echo "[+] miniproject.jar has created successfully...";
