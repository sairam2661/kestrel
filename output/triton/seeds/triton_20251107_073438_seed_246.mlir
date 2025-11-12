"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_select"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.divsi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %5 = "arith.constant"() <{value = dense<3> : tensor<8xi32>}> : () -> tensor<8xi32>
    %6 = "arith.select"(%3, %4, %5) : (i1, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "scf.for"(%0, %1, %2) ({
    ^bb1(%arg2: i32):
      %8 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %9 = "arith.addi"(%arg2, %8) : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> i32
    %10 = "tt.reduce"() ({
    ^bb2(%arg3: i32):
      %11 = "arith.addi"(%arg3, %arg2) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> i32
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> tensor<8xi32>
}) : () -> ()