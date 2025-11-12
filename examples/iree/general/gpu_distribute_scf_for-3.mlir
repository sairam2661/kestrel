"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, memref<?xf32>) -> (), sym_name = "no_distribute_without_attr"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: memref<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %4 = "tensor.empty"() : () -> tensor<2x128xf32>
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg4: index):
      "memref.store"(%3, %arg3, %arg4) : (f32, memref<?xf32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

