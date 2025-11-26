#
# Basic variables and User Input
#

# Variables
NAME="DevOps Learner"
CURRENT_DIR=$(pwd)
DATE=$(date +%Y-%m-%d)

echo "Welcome, $NAME"
echo "Current Directory: $CURRENT_DIR"
echo "Today's Date is: $DATE)"

echo  "\nLets get some Info from you..."
read -p "What is your Name? " USER_NAME
read -p "What is the directory you want to explore? " TARGET_DIR

echo -e "\nHello, $USER_NAME! Lets Explore $TARGET_DIR"

if [ -d "$TARGET_DIR" ]; then
    echo "Directory Exists! Here is what is Inside:"
    ls -la $TARGET_DIR
else
    echo "Directory Name Doesnt exists:"
    find / -type -d --name "*$(TARGET_DIR)*" 2> /dev/null | head -5
fi

echo "\nLets Search for sh files"
find ~ -name "*.sh" -type f 2>/dev/null | head -5