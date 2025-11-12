"builtin.module"() ({
  "func.func"() <{function_type = (index, vector<2x8xi32>) -> (index, vector<2x8xi32>), sym_name = "test_complex_signed_unsigned"}> ({
  ^bb0(%arg0: index, %arg1: vector<2x8xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    %1 = "arith.cmpi"("eq", %0, %arg0) : (i1, index, index) -> i1
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addf"(%arg1, %arg1) : (vector<2x8xi32>, vector<2x8xi32>) -> vector<2x8xi32>
    "func.return"(%0, %3) : (index, vector<2x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()