"builtin.module"() ({

  "func.func"() <{function_type = (!torchatenshape_as_tensor, !torchatenconstantint) -> !torchatenconstantint, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torchatenshape_as_tensor, %arg1: !torchatenconstantint):
      %0 = "torchaten.constant.int"() <{value = 5 : i64}> : () -> !torchatenconstantint
      %1 = "torchaten.cat"(%arg0, %0) : (!torchatenshape_as_tensor, !torchatenconstantint) -> !torchatenshape_as_tensor
      %2 = "torchaten._shape_as_tensor"(%1) : (!torchatenshape_as_tensor) -> !torchatenshape_as_tensor
      %3 = "torchaten.size.int"(%2, %arg1) : (!torchatenshape_as_tensor, !torchatenconstantint) -> !torchatenconstantint
      "func.return"(%3) : (!torchatenconstantint) -> ()
  }) : () -> ()

}) : () -> ()