if [ -e "/usr/bin/java" ]; then
  java="/usr/bin/java"
  "$java" "Test.class"
else
  "echo" "-e" "Java doesn't exist!"
  exit 1
fi
