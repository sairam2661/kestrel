"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_rotation"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "scf.for"() ( ) {
    successor_list = ["^bb1", "^bb2"]
    } : () -> () do  .loop_vars 0 : index
    ^bb1:
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "scf.yield"(%1) : (index) -> ()
    ^bb2:
      %3 = "scf.yield"(%0) : (index) -> ()
    %4 = "tensor_ext.rotate"(%arg0, %4) : (tensor<3xi32>, index) -> tensor<3xi32>
    %5 = "tensor_ext.rotate"(%arg1, %4) : (tensor<3xi32>, index) -> tensor<3xi32>
    %6 = "arith.addi"(%4, %4) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
    %7 = "scf.for"() ( ) {
    successor_list = ["^bb3", "^bb4"]
    } : () -> () do  .loop_vars 1 : index
    ^bb3:
      %8 = "arith.constant"() <{value = 2 : index}> : () -> index
      %9 = "scf.yield"(%8) : (index) -> ()
    ^bb4:
      %10 = "scf.yield"(%7) : (index) -> ()
    %11 = "tensor_ext.rotate"(%5, %10) : (tensor<3xi32>, index) -> tensor<3xi32>
    %12 = "arith.subi"(%4, %10) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
    %13 = "scf.for"() ( ) {
    successor_list = ["^bb5", "^bb6"]
    } : () -> () do  .loop_vars 2 : index
    ^bb5:
      %14 = "arith.constant"() <{value = 1 : index}> : () -> index
      %15 = "scf.yield"(%14) : (index) -> ()
    ^bb6:
      %16 = "scf.yield"(%13) : (index) -> ()
    %17 = "tensor_ext.rotate"(%11, %16) : (tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%17) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()