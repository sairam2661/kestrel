"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<4x4xi32>, sym_name = "allocas"}> ({
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xi32>
    "func.return"(%0) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

