podman pull ghcr.io/jamesdoingstuff/dawn
podman run --rm \
--read-only \
-v /dls/science/users/gmg29649:/dls/science/users/gmg29649 \
--userns=keep-id \
ghcr.io/jamesdoingstuff/dawn \
bash -c '
export _JAVA_OPTIONS=-Duser.home=/tmp/
ls -la /dls/science/users/gmg29649
cd /tmp/
whoami
unzip -q ../DawnDiamond-2.40.0.v20251006-1027-linux.x86_64.zip -d .
./dawn -configuration /tmp/ -consoleLog -noSplash -data @none -application uk.ac.diamond.scisoft.diffraction.powder.application.powdercalibrate -path /dls/science/users/gmg29649/config.json
ls -la /tmp/
cat gmg29649-dawn.log
'