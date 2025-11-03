
#!/bin/bash

while true; do
    echo "==============================="
    echo "        MENU OPTIONS           "
    echo "==============================="
    echo "1. Show current date and time"
    echo "2. List files in current directory"
    echo "3. Show current working directory"
    echo "4. Show disk usage"
    echo "5. Exit"
    echo "==============================="
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            echo "Current date and time: $(date)"
            ;;
        2)
            echo "Files in current directory:"
            ls -lah
            ;;
        3)
            echo "Current working directory: $(pwd)"
            ;;
        4)
            echo "Disk usage:"
            df -h
            ;;
        5)
            echo "Exiting... Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice, please enter a number between 1 and 5."
            ;;
    esac

    echo ""  # Print a blank line for readability
    read -p "Press Enter to continue..."
done

