function add-path() {
    if (( ! path[(Ie)$0] )); then
        path=($0 $path)
    fi
}
