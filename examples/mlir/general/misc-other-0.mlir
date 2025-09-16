"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "func_with_assert"}> ({
  ^bb0(%arg1: index, %arg2: index):
    %1 = "arith.cmpi"(%arg1, %arg2) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.assert"(%1) <{msg = "%arg0 must be less than %arg1"}> : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<128xi8>) -> (), sym_name = "func_with_assume_alignment"}> ({
  ^bb0(%arg0: memref<128xi8>):
    %0 = "memref.assume_alignment"(%arg0) <{alignment = 64 : i32}> : (memref<128xi8>) -> memref<128xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

