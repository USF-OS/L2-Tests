source "${TEST_DIR}/funcs.bash"

reference_output=$(cat <<"EOM"
Read 0, bytes: 27 | The dawn has shut her eyes
Read 1, bytes: 1 | 
Read 2, bytes: 27 | The wind pointlessly moans
Read 3, bytes: 1 | 
Read 4, bytes: 34 | Someone has draped in dense cloud
Read 5, bytes: 1 | 
Read 6, bytes: 29 | The innocent blue of the sky
EOM
)

test_start "Small text file"

run ./read_file "${TEST_DIR}/file1.txt"

compare_outputs

test_end
