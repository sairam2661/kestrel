"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}, {}, {}, {}], function_type = (tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>, sym_name = "matmul"}> ({
  ^bb0(%arg0: tensor<16xf32>, %arg1: tensor<16xf32>, %arg2: tensor<16xf32>, %arg3: tensor<16xf32>, %arg4: tensor<16xf32>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xf32>, index) -> tensor<16xf32>
    %4 = "arith.mulf"(%3, %arg2) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %5 = "arith.addf"(%2, %4) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %6 = "arith.mulf"(%arg0, %arg3) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %7 = "arith.mulf"(%3, %arg4) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %8 = "arith.addf"(%6, %7) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %9 = "tensor_ext.rotate"(%8, %1) : (tensor<16xf32>, index) -> tensor<16xf32>
    %10 = "arith.addf"(%5, %9) <{fastmath = #arith.fastmath<none>}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    "func.return"(%10) : (tensor<16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

