"builtin.module"() ({
  "func.func"() <{function_type = (memref<30x30xi32>) -> i32, sym_name = "foo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<30x30xi32>
    %2 = "func.call"(%1) <{callee = @foo}> : (memref<30x30xi32>) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

