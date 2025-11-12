"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x16x16xf32>, index) -> f32, sym_name = "test"}> ({
  ^bb0(%arg0: memref<2x16x16xf32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "memref.load"(%arg0, %arg1, %0, %1) : (memref<2x16x16xf32>, index, index, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

