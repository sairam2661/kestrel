"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, index) -> vector<4xi32>, sym_name = "complex_vector_op"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "eq") : (index, i32, i1) -> i1
    %2 = "arith.cmpi"(%arg1, %0, "ne") : (index, i32, i1) -> i1
    %3:2 = "scf.if"(%1) <{sym_name = "if_true"}> ({
    ^bb1:
      %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %5 = "arith.addi"(%arg0, %4) : (vector<4xi32>, i32) -> vector<4xi32>
      "scf.yield"(%5, %2) : (vector<4xi32>, i1) -> ()
    }) {
    } : (i1) -> (vector<4xi32>, i1)
    %6:2 = "scf.if"(%2) <{sym_name = "if_false"}> ({
    ^bb2:
      %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %8 = "arith.addi"(%arg0, %7) : (vector<4xi32>, i32) -> vector<4xi32>
      "scf.yield"(%8, %1) : (vector<4xi32>, i1) -> ()
    }) {
    } : (i1) -> (vector<4xi32>, i1)
    "func.return"(%6#0) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()