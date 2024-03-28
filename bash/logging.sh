#!/bin/bash

# Function to print INFO logs
log_info() {
    local message="$@"
    echo -e "\e[32m[INFO] ${message[@]}\e[0m"
}

# Function to print ERROR logs
log_error() {
    local message="$@"
    echo -e "\e[31m[ERROR] ${message[@]}\e[0m" >&2
}

# Function to print WARN logs
log_warn() {
    local message="$@"
    echo -e "\e[33m[WARN] ${message[@]}\e[0m" >&2
}

# Example usage
log_info "This is an INFO log" "with multiple" "arguments"
log_error "This is an ERROR log" "with" "multiple" "arguments"
log_warn "This is a WARN log" "with" "multiple" "arguments"
