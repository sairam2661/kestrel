"builtin.module"() ({
  "func.func"() <{function_type = (i32, index) -> vector<4xi32>, sym_name = "complexOpChain"}> ({
  ^bb0(%arg0: i32, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.addi"(%arg1, %2) : (index, index) -> index
    %4 = "arith.constant"() <{value = [1, 2, 3, 4]}> : () -> vector<4xi32>
    %5 = "arith.muli"(%1, %3) : (i32, index) -> i32
    %6 = "vector.insertelement"(%4, %5, 2) <{position = [2]}> : (vector<4xi32>, i32, index) -> vector<4xi32>
    "func.return"(%6) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()