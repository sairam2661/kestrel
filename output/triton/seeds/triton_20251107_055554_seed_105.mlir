"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 8 : i32}], function_type = (tensor<4x4xi32>, tensor<2x2xi64>) -> tensor<4x4xi32>, sym_name = "nested_loops_and_reduction"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<2x2xi64>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    "scf.for"(%0) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb0(%arg2: tensor<4x4xi32>, %arg3: i32):
      "scf.for"(%arg3) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
      ^bb0(%arg4: tensor<4x4xi32>, %arg5: i32):
        %1 = "arith.muli"(%arg2, %arg3) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
        %2 = "arith.addi"(%arg4, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
        "scf.yield"(%2) : (tensor<4x4xi32>) -> ()
      }) : (tensor<4x4xi32>, i32) -> ()
      "scf.yield"(%arg3) : (i32) -> ()
    }) : (tensor<4x4xi32>, i32) -> ()
    
    %3 = "tt.reduce"(%arg0) <{axis = 0 : i32}> ({
    ^bb0(%arg6: i32, %arg7: i32):
      %4 = "arith.addi"(%arg6, %arg7) : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<4x4xi32>) -> tensor<4xi32>
    
    "tt.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()