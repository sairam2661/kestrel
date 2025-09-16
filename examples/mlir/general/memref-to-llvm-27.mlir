"builtin.module"() ({
  "func.func"() <{function_type = (memref<32xf32>, memref<32xf32>) -> (), sym_name = "store_non_temporal"}> ({
  ^bb0(%arg0: memref<32xf32>, %arg1: memref<32xf32>):
    %0 = "arith.constant"() <{value = 7 : index}> : () -> index
    %1 = "memref.load"(%arg0, %0) <{nontemporal = true}> : (memref<32xf32>, index) -> f32
    "memref.store"(%1, %arg1, %0) <{nontemporal = true}> : (f32, memref<32xf32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

