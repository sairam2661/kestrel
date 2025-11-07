"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "copy_to_pad_partial_transposed", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<56x39xf32>
    %1 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x6xf32>
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 36 : index}> : () -> index
    %4 = "arith.constant"() <{value = 54 : index}> : () -> index
    "krnl.copy_to_tile_buffer"(%1, %0, %4, %3, %2) {padToNext = [4, 6], transpose = true} : (memref<4x6xf32>, memref<56x39xf32>, index, index, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

