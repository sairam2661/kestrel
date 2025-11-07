#map = affine_map<(d0) -> (d0 floordiv 64, d0 mod 64)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (3)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<3xf32, #map>) -> memref<3xf32, #map>, sym_name = "memref_with_affine", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<3xf32, #map>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xf32, #map>
    %1 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    "krnl.iterate"(%1, %1) ({
    ^bb0(%arg1: index):
      %2 = "krnl.get_induction_var_value"(%1) : (!krnl.loop) -> index
      %3 = "krnl.load"(%arg0, %2) : (memref<3xf32, #map>, index) -> f32
      "krnl.store"(%3, %0, %2) : (f32, memref<3xf32, #map>, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map1, #map2], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"(%0) : (memref<3xf32, #map>) -> ()
  }) : () -> ()
}) : () -> ()

