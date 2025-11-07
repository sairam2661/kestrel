#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xf32>) -> memref<10x10xf32>, sym_name = "test_krnl_asinh_lowering"}> ({
  ^bb0(%arg0: memref<10x10xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    %1:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%1#0, %1#1, %1#0, %1#1) ({
    ^bb0(%arg1: index, %arg2: index):
      %2 = "krnl.load"(%arg0, %arg1, %arg2) : (memref<10x10xf32>, index, index) -> f32
      %3 = "krnl.asinh"(%2) : (f32) -> f32
      "krnl.store"(%3, %0, %arg1, %arg2) : (f32, memref<10x10xf32>, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"(%0) : (memref<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

