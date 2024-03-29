source "${TEST_DIR}/funcs.bash"

reference_output=$(cat <<"EOM"
Read 0 | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod lacus ipsum, non convallis nisl euismod vitae. Morbi rhoncus venenatis urna, ac rutrum ipsum iaculis a. Nunc eget odio a arcu suscipit consequat sed sed est. Pellentesque et eleifend erat. Phasellus lobortis lacus at egestas scelerisque. Aenean sed tempus nisi, non placerat magna. Curabitur ac massa vel massa consectetur varius vel non eros. Fusce a risus tortor. Proin convallis aliquam pellentesque. Nunc arcu mauris, mollis at est at, commodo ullamcorper ex. Phasellus sed suscipit odio, eget dapibus nisi. Pellentesque sodales tincidunt nisi in tempor. Ut ullamcorper est eget mauris consequat, nec feugiat lacus ultrices.
Read 1 | 
Read 2 | Aenean nisi sapien, laoreet ut tempor ultricies, scelerisque quis massa. Nam ac ex massa. Integer consequat condimentum nisl, id mollis dolor tincidunt vel. Vivamus luctus eros purus, sed rhoncus libero mollis quis. Praesent et ipsum ac ex feugiat dignissim vel in dolor. Nullam in luctus libero. Nam ac diam elementum, volutpat arcu sed, pharetra nunc. Vestibulum lobortis a felis a consectetur. Quisque eu magna diam.
Read 3 | 
Read 4 | Suspendisse rutrum dignissim velit eget placerat. Phasellus in ante et nulla commodo tincidunt. Vestibulum rhoncus egestas nunc quis porttitor. Etiam finibus tortor vel turpis hendrerit, id efficitur neque egestas. Aliquam eu rutrum metus, sed feugiat turpis. Phasellus sed orci quis mauris ultricies dignissim id ut felis. Mauris fermentum velit eu eros consequat tincidunt sed id libero. Suspendisse potenti. Nullam tristique lobortis lectus.
Read 5 | 
Read 6 | Ut quis purus ac nunc sollicitudin porttitor. Donec scelerisque mattis sapien, eget placerat orci eleifend interdum. Vestibulum tristique nulla sit amet imperdiet imperdiet. Aenean tristique ut augue nec sollicitudin. Curabitur tincidunt massa eu magna suscipit vehicula. Quisque a nunc quis ipsum sodales aliquet eu ac nisl. Suspendisse et tellus sit amet lectus sodales luctus in non quam. In hac habitasse platea dictumst. Aenean vitae eros ut turpis convallis tincidunt.
Read 7 | 
EOM
)

test_start "Dynamic version"

run ./read_file_dynamic "${TEST_DIR}/file2.txt"

compare_outputs

test_end
