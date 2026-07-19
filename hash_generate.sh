hash_generate() {
    if [[ "${1:-}" == "--init" ]]; then
        find ./monitored -type f -exec sha256sum {} \; | sort > database/baseline.txt
    else
        find ./monitored -type f -exec sha256sum {} \; | sort > database/current.txt
    fi
}
