"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "test_krnl_strlen2", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x!krnl.string>
    %2 = "krnl.load"(%1, %0) : (memref<1x!krnl.string>, index) -> !krnl.string
    %3 = "krnl.strlen"(%2) : (!krnl.string) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

