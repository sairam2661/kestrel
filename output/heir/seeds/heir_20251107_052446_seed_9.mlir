"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i1) -> tensor<4xi32>, sym_name = "test_complex_control_flow"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i1):
    "scf.if"(%arg2) ({
      ^bb1(%arg3: tensor<4xi32>, %arg4: tensor<4xi32>):
        %5 = "arith.constant"() <{value = 0 : index}> : () -> index
        %6 = "arith.constant"() <{value = 1 : index}> : () -> index
        %7 = "arith.constant"() <{value = 2 : index}> : () -> index
        %8 = "arith.constant"() <{value = 3 : index}> : () -> index
        "scf.if"(%arg2) ({
          ^bb2(%arg5: tensor<4xi32>, %arg6: tensor<4xi32>, %arg7: index):
            %9 = "tensor.extract"(%arg5, %7) : (tensor<4xi32>, index) -> i32
            %10 = "tensor.extract"(%arg6, %7) : (tensor<4xi32>, index) -> i32
            %11 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
            %12 = "tensor.insert"(%11, %arg5, %7) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
            "scf.yield"(%12) : (tensor<4xi32>) -> ()
        }, {
          ^bb3(%arg8: tensor<4xi32>, %arg9: tensor<4xi32>, %arg10: index):
            %13 = "tensor.extract"(%arg8, %7) : (tensor<4xi32>, index) -> i32
            %14 = "tensor.extract"(%arg9, %7) : (tensor<4xi32>, index) -> i32
            %15 = "arith.subi"(%13, %14) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
            %16 = "tensor.insert"(%15, %arg8, %7) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
            "scf.yield"(%16) : (tensor<4xi32>) -> ()
        }) : (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>
        "scf.yield"(%arg3) : (tensor<4xi32>) -> ()
    }, {
      ^bb4(%arg11: tensor<4xi32>, %arg12: tensor<4xi32>):
        "scf.yield"(%arg12) : (tensor<4xi32>) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%arg0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()