"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "foo"}> ({
  ^bb0(%arg0: memref<4x4xi32>):
    "func.return"(%arg0) : (memref<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "calls"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xi32>
    %1 = "func.call"(%0) <{callee = @foo}> : (memref<4x4xi32>) -> memref<4x4xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

