"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, i32) -> i32, sym_name = "vector_logic"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.cmpi"(%arg1, %0, "ne") : (i32, i32, i32) -> i1
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %5 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%3#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()