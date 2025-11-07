"builtin.module"() ({
  "func.func"() <{function_type = (!krnl.string, i64) -> i32, sym_name = "test_strncmp", sym_visibility = "private"}> ({
  ^bb0(%arg0: !krnl.string, %arg1: i64):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x!krnl.string>
    %2 = "krnl.load"(%1, %0) : (memref<1x!krnl.string>, index) -> !krnl.string
    %3 = "krnl.strncmp"(%arg0, %2, %arg1) : (!krnl.string, !krnl.string, i64) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

