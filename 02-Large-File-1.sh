source "${TEST_DIR}/funcs.bash"

reference_output=$(cat <<"EOM"
Read 0, bytes: 63 | Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis e
Read 1, bytes: 63 | uismod lacus ipsum, non convallis nisl euismod vitae. Morbi rho
Read 2, bytes: 63 | ncus venenatis urna, ac rutrum ipsum iaculis a. Nunc eget odio 
Read 3, bytes: 63 | a arcu suscipit consequat sed sed est. Pellentesque et eleifend
Read 4, bytes: 63 |  erat. Phasellus lobortis lacus at egestas scelerisque. Aenean 
Read 5, bytes: 63 | sed tempus nisi, non placerat magna. Curabitur ac massa vel mas
Read 6, bytes: 63 | sa consectetur varius vel non eros. Fusce a risus tortor. Proin
Read 7, bytes: 63 |  convallis aliquam pellentesque. Nunc arcu mauris, mollis at es
Read 8, bytes: 63 | t at, commodo ullamcorper ex. Phasellus sed suscipit odio, eget
Read 9, bytes: 63 |  dapibus nisi. Pellentesque sodales tincidunt nisi in tempor. U
Read 10, bytes: 63 | t ullamcorper est eget mauris consequat, nec feugiat lacus ultr
Read 11, bytes: 6 | ices.

Read 12, bytes: 1 | 

Read 13, bytes: 63 | Aenean nisi sapien, laoreet ut tempor ultricies, scelerisque qu
Read 14, bytes: 63 | is massa. Nam ac ex massa. Integer consequat condimentum nisl, 
Read 15, bytes: 63 | id mollis dolor tincidunt vel. Vivamus luctus eros purus, sed r
Read 16, bytes: 63 | honcus libero mollis quis. Praesent et ipsum ac ex feugiat dign
Read 17, bytes: 63 | issim vel in dolor. Nullam in luctus libero. Nam ac diam elemen
Read 18, bytes: 63 | tum, volutpat arcu sed, pharetra nunc. Vestibulum lobortis a fe
Read 19, bytes: 42 | lis a consectetur. Quisque eu magna diam.

Read 20, bytes: 1 | 

Read 21, bytes: 63 | Suspendisse rutrum dignissim velit eget placerat. Phasellus in 
Read 22, bytes: 63 | ante et nulla commodo tincidunt. Vestibulum rhoncus egestas nun
Read 23, bytes: 63 | c quis porttitor. Etiam finibus tortor vel turpis hendrerit, id
Read 24, bytes: 63 |  efficitur neque egestas. Aliquam eu rutrum metus, sed feugiat 
Read 25, bytes: 63 | turpis. Phasellus sed orci quis mauris ultricies dignissim id u
Read 26, bytes: 63 | t felis. Mauris fermentum velit eu eros consequat tincidunt sed
Read 27, bytes: 63 |  id libero. Suspendisse potenti. Nullam tristique lobortis lect
Read 28, bytes: 4 | us.

Read 29, bytes: 1 | 

Read 30, bytes: 63 | Ut quis purus ac nunc sollicitudin porttitor. Donec scelerisque
Read 31, bytes: 63 |  mattis sapien, eget placerat orci eleifend interdum. Vestibulu
Read 32, bytes: 63 | m tristique nulla sit amet imperdiet imperdiet. Aenean tristiqu
Read 33, bytes: 63 | e ut augue nec sollicitudin. Curabitur tincidunt massa eu magna
Read 34, bytes: 63 |  suscipit vehicula. Quisque a nunc quis ipsum sodales aliquet e
Read 35, bytes: 63 | u ac nisl. Suspendisse et tellus sit amet lectus sodales luctus
Read 36, bytes: 63 |  in non quam. In hac habitasse platea dictumst. Aenean vitae er
Read 37, bytes: 34 | os ut turpis convallis tincidunt.

Read 38, bytes: 1 | 

EOM
)

test_start "Large text file with long lines"

run ./read_file "${TEST_DIR}/file2.txt"

compare_outputs

test_end
