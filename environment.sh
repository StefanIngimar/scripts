#!/bin/bash

setup_python() {
    echo "Setting up Python development environment..."
    sudo apt-get update
    sudo apt-get install -y python3-pip python3-dev
    mkdir -p "/home/stefan/dev/$project_name"
    echo "Python environment setup complete. Project directory created at /home/stefan/dev/$project_name"
}

setup_java() {
    echo "Setting up Java development environment..."
    sudo apt-get update
    sudo apt-get install -y default-jdk
    mkdir -p "/home/stefan/dev/$project_name"
    echo "Java environment setup complete. Project directory created at /home/stefan/dev/$project_name"
}

setup_javascript() {
    echo "Setting up JavaScript development environment..."
    sudo apt-get update
    sudo apt-get install -y nodejs npm
    mkdir -p "/home/stefan/dev/$project_name"
    echo "JavaScript environment setup complete. Project directory created at /home/stefan/dev/$project_name"
}

echo "Which environment do you want to set up? (python/java/javascript)"
read environment
echo "Enter the name of the project:"
read project_name

case $environment in
    python)
        setup_python
        ;;
    java)
        setup_java
        ;;
    javascript)
        setup_javascript
        ;;
    *)
        echo "Invalid input. Please enter 'python', 'java', or 'javascript'."
        exit 1
        ;;
esac
