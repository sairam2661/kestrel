"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.mulsi"(%1, %0) : (i32, i32) -> i32
      %3 = "arith.subi"(%arg1, %arg0) : (i32, i32) -> i32
      %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform_any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform_any_op):
      %0 = "transform.test_produce_null_param"() : () -> !transform_param_i64
      "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x256xf32>, tensor<256x256xf32>) -> tensor<1x256xf32>, sym_name = "matmul_large"}> ({
    ^bb0(%arg0: tensor<1x256xf32>, %arg1: tensor<256x256xf32>):
      %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<1x256xf32>, tensor<256x256xf32>) -> tensor<1x256xf32>
      "func.return"(%0) : (tensor<1x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "scf.for"() <{lb = 0 : index, ub = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %0 = "arith.addi"(%iv, %iv) : (index, index) -> index
      "scf.yield"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (memref<1024xf32>) -> memref<1024xf32>, sym_name = "memref_swap"}> ({
    ^bb0(%arg0: memref<1024xf32>):
      %0 = "memref.alloc"() <{dynamicSizes = [], shape = [], sym_name = "swap_buffer"}> : () -> memref<1024xf32>
      "memref.copy"(%arg0, %0) : (memref<1024xf32>, memref<1024xf32>) -> ()
      "memref.dealloc"(%arg0) : (memref<1024xf32>) -> ()
      "func.return"(%0) : (memref<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()