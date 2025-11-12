"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantnone, !torchconstantfloat) -> !torchconstantfloat, sym_name = "fuzz_edge_case"}> ({
  ^bb0(%arg0: !torchconstantnone, %arg1: !torchconstantfloat):
    %0 = "torchconstantint"() <{value = 5 : i64}> : () -> !torchconstantint
    %1 = "torchconstantbool"() <{value = true}> : () -> !torchconstantbool
    %2 = "torchconstantbool"() <{value = false}> : () -> !torchconstantbool
    %3 = "torchatenslice.Tensor"(%arg1, %0, %0, %0) : (!torchconstantfloat, !torchconstantint, !torchconstantint, !torchconstantint) -> !torchconstantfloat
    %4 = "torchatenview"(%arg1, %0) : (!torchconstantfloat, !torchconstantint) -> !torchconstantfloat
    %5 = "torchatenadd.Tensor"(%3, %4) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    "func.return"(%5) : (!torchconstantfloat) -> ()
  }) : () -> ()
}) : () -> ()