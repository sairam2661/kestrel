"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x20xf32>) -> index, sym_name = "test_krnl_dim_lowering_with_const_arg"}> ({
  ^bb0(%arg0: memref<10x20xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "krnl.dim"(%arg0, %0) : (memref<10x20xf32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

