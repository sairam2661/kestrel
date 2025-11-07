"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "copy_to_runtime_start_indices_larger_source", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<5x10x39x56xf32>
    %1 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x6xf32>
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 36 : index}> : () -> index
    %6 = "arith.constant"() <{value = 54 : index}> : () -> index
    "krnl.copy_to_tile_buffer"(%1, %0, %3, %4, %arg0, %arg1, %2) {padToNext = [3, 3], transpose = false} : (memref<4x6xf32>, memref<5x10x39x56xf32>, index, index, index, index, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

