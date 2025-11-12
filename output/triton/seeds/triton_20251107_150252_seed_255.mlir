"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, tensor<1024xi32>) -> (tensor<1024xi32>), sym_name = "complex_computation"}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<1024xi32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %1 = "arith.select"(%arg0, %arg2, %0) : (i32, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %2 = "arith.cmpi"(%arg2, %0) <{predicate = 4 : i64}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
      %3:2 = "scf.if"(%2) ({
        %4 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
        %5 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
        "scf.yield"(%4, %5) : (tensor<1024xi32>, tensor<1024xi32>) -> ()
      }, {
        %6 = "arith.divsi"(%1, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
        "scf.yield"(%1, %6) : (tensor<1024xi32>, tensor<1024xi32>) -> ()
      }) : (tensor<1024xi1>) -> (tensor<1024xi32>, tensor<1024xi32>)
      %7 = "tt.reduce"(%3#0) <{identity = 0 : i32, operation = "add"}> : (tensor<1024xi32>) -> i32
      %8 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
      %9 = "arith.muli"(%8, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, i32) -> tensor<1024xi32>
      %10 = "arith.addi"(%9, %3#1) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      "tt.return"(%10) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()