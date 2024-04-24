#!/bin/dash

test="google.com"

if ! nc -zw1 $test 443; then
    echo "Failed to connect to $test on port 443."
    exit 1
fi

ssl_output=$(echo | openssl s_client -connect $test:443 2>&1)
echo "$ssl_output" | grep -q "Verify return code: 0 (ok)"
if [ $? -ne 0 ]; then
    echo "SSL verification failed or SSL handshake did not complete successfully."
    echo "Debug info:"
    echo "$ssl_output" | grep "Verify return code:"
    exit 2
fi

echo "We have connectivity and SSL verification passed."
