"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> (i32), sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %4 = "arith.cmpi"(%arg0, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
    %6 = "arith.select"(%4, %1, %5) : (i1, i32, i32) -> i32
    %7 = "tt.reduce"(%arg1) <{operation = "add"}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %8 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) {tt.num_stages = 2 : i32} : (tensor<8xi32>) -> i32
    %9 = "arith.xori"(%arg0, %7) : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : (i32, tensor<8xi32>) -> (i32)
}) : () -> ()