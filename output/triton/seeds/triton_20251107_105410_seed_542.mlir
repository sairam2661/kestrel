"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.mul"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.xori"(%4, %6) : (i32, i32) -> i32
    %8 = "arith.select"(%arg1, %7, %5) : (i32, i32, i32) -> i32
    %9 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %10 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %11 = "scf.if"(%9) ({
      "scf.yield"(%8) : (i32) -> ()
    }, {
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_arithmetic"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.mul"(%0, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.divsi"(%2, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.remsi"(%3, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.xori"(%2, %4) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.select"(%arg1, %5, %3) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %8 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %9 = "scf.if"(%7) ({
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }, {
      "scf.yield"(%5) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> tensor<32xi32>
    "tt.return"(%9) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
}) : () -> ()