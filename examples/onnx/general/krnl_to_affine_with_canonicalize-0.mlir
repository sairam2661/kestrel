"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "memset", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x4x20x30xf32>
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    "krnl.memset"(%0, %1) {delayed = false} : (memref<8x4x20x30xf32>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

