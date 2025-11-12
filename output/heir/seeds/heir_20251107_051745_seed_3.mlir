"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, i32) -> tensor<3x3xi32>, sym_name = "nested_loops_with_secret"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    scf.for %i0, %init0 : index, tensor<3x3xi32> iter_args
      .tensor_init %arg0 : tensor<3x3xi32>
      "scf.yield"(%init0) : (tensor<3x3xi32>) -> ()
    iter_fini
      .loc "unknown loc"
      : (tensor<3x3xi32>) -> tensor<3x3xi32>
      ^bb1(%arg2: index, %arg3: tensor<3x3xi32>):
        scf.for %i1, %init1 : index, tensor<3x3xi32> iter_args
          .tensor_init %arg3 : tensor<3x3xi32>
          "scf.yield"(%init1) : (tensor<3x3xi32>) -> ()
        iter_fini
          .loc "unknown loc"
          : (tensor<3x3xi32>) -> tensor<3x3xi32>
          ^bb2(%arg4: index, %arg5: tensor<3x3xi32>):
            %6 = "arith.addi"(%arg4, %arg4) : (index, index) -> index
            %7 = "arith.addi"(%6, %arg2) : (index, index) -> index
            %8 = "tensor.extract"(%arg5, %7, %7) : (tensor<3x3xi32>, index, index) -> i32
            %9 = "arith.addi"(%8, %arg1) : (i32, i32) -> i32
            %10 = "tensor.insert"(%9, %arg5, %7, %7) : (i32, tensor<3x3xi32>, index, index) -> tensor<3x3xi32>
            "scf.yield"(%10) : (tensor<3x3xi32>) -> ()
        scf.yield %arg5 : tensor<3x3xi32>
    scf.yield %arg3 : tensor<3x3xi32>
    "func.return"(%arg3) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()