"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x?x?x13x?xf32>) -> (), sym_name = "mixed_memref_dim"}> ({
  ^bb0(%arg0: memref<42x?x?x13x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<42x?x?x13x?xf32>, index) -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "memref.dim"(%arg0, %2) : (memref<42x?x?x13x?xf32>, index) -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "memref.dim"(%arg0, %4) : (memref<42x?x?x13x?xf32>, index) -> index
    %6 = "arith.constant"() <{value = 3 : index}> : () -> index
    %7 = "memref.dim"(%arg0, %6) : (memref<42x?x?x13x?xf32>, index) -> index
    %8 = "arith.constant"() <{value = 4 : index}> : () -> index
    %9 = "memref.dim"(%arg0, %8) : (memref<42x?x?x13x?xf32>, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

