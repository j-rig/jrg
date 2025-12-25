
echo "checking for install..."
IFILE="/var/jrg/cronicle.installed.txt"
if [ ! -f $IFILE ]; then
    echo "installing...."
    /opt/cronicle/bin/control.sh setup
    
    echo "creating admin user..."
    /opt/cronicle/bin/control.sh admin admin adminpass

    touch $IFILE
fi

echo "starting up..."
/opt/cronicle/bin/debug.sh --master