#!/bin/bash
# Takes in and sends a request to a given URL then displays the size of the body of the response
curl -sI $1 | grep "Content-Length" | cut -d " " -f2
