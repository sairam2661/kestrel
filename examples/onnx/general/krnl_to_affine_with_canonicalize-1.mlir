"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "memset_dyn", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "memref.alloca"(%arg0) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x4x20x30xf32>
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    "krnl.memset"(%0, %1) {delayed = false} : (memref<?x4x20x30xf32>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

