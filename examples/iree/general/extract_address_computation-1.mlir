"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x16x16xf32>, index) -> (), sym_name = "test_store"}> ({
  ^bb0(%arg0: memref<2x16x16xf32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    "memref.store"(%0, %arg0, %arg1, %1, %2) : (f32, memref<2x16x16xf32>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

