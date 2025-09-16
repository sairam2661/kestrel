"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.writable = true}], function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "non_tensor_for_arg"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 10 : index}> : () -> index
    %4:2 = "scf.for"(%0, %3, %1, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: index, %arg3: tensor<?xf32>):
      %5 = "tensor.insert"(%2, %arg3, %arg2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
      "scf.yield"(%arg2, %5) : (index, tensor<?xf32>) -> ()
    }) : (index, index, index, index, tensor<?xf32>) -> (index, tensor<?xf32>)
    "func.return"(%4#1) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

