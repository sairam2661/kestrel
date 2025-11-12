"builtin.module"() ({
  "func.func"() <{function_type = (memref<256xi1>, memref<256xi1>) -> (memref<256xi1>, memref<256xi1>), sym_name = "bitwise_xor_and"}> ({
    ^bb0(%arg0: memref<256xi1>, %arg1: memref<256xi1>):
      %0 = "arith.constant"() <{value = 1 : i1}> : () -> i1
      %1 = "arith.constant"() <{value = 0 : i1}> : () -> i1
      %xor = "arith.xori"(%arg0, %arg1) : (memref<256xi1>, memref<256xi1>) -> memref<256xi1>
      %and = "arith.andi"(%xor, %0) : (memref<256xi1>, i1) -> memref<256xi1>
      "func.return"(%xor, %and) : (memref<256xi1>, memref<256xi1>) -> ()
  }) : () -> ()
}) : () -> ()