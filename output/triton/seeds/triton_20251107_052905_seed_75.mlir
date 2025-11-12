"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "complex_nested_loop"}> ({
  ^bb0(%arg0: tensor<1024xi32>):
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %3 = "scf.for"(%1, %2, %1, %arg0) ({
    ^bb1(%arg1: i32, %arg2: tensor<1024xi32>):
      %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 512 : i32}> : () -> i32
      %6 = "scf.for"(%4, %5, %4, %arg2) ({
      ^bb2(%arg3: i32, %arg4: tensor<1024xi32>):
        %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %8 = "arith.constant"() <{value = 256 : i32}> : () -> i32
        %9 = "scf.for"(%7, %8, %7, %arg4) ({
        ^bb3(%arg5: i32, %arg6: tensor<1024xi32>):
          %10 = "arith.addi"(%arg5, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %11 = "arith.addi"(%arg6, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, i32) -> tensor<1024xi32>
          "scf.yield"(%11) : (tensor<1024xi32>) -> ()
        }) : (i32, tensor<1024xi32>) -> tensor<1024xi32>
        "scf.yield"(%9) : (tensor<1024xi32>) -> ()
      }) : (i32, tensor<1024xi32>) -> tensor<1024xi32>
      "scf.yield"(%6) : (tensor<1024xi32>) -> ()
    }) : (i32, tensor<1024xi32>) -> tensor<1024xi32>
    "tt.return"(%3) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()