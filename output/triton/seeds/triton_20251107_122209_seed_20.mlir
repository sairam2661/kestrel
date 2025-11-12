"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32):
    %1 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %2 = "arith.constant"() <{value = dense<5> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %3 = "arith.addi"(%1, %2) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "arith.cmpi"(%3, %2, "slt") : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
    %5 = "arith.select"(%4, %3, %2) : (tensor<1024xi1>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %6 = "scf.for"() <{lb = 0 : i32, ub = 1024 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %7 = "arith.addi"(%iv, %arg0) : (i32, i32) -> i32
      %8 = "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()