"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$shape$0xf32, !torch$vtensor$shape$0xf32, !torch$vtensor$shape$0xf32) -> !torch$vtensor$shape$0xf32, sym_name = "fuzz_test_function"}> ({
  ^bb0(%arg0: !torch$vtensor$shape$0xf32, %arg1: !torch$vtensor$shape$0xf32, %arg2: !torch$vtensor$shape$0xf32):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch$vint
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch$vint
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch$vint
    %c3 = "torch.constant.bool"() <{value = true}> : () -> !torch$vbool

    %size_0 = "torch.aten.size.int"(%arg0, %c0) : (!torch$vtensor$shape$0xf32, !torch$vint) -> !torch$vint
    %size_1 = "torch.aten.size.int"(%arg0, %c1) : (!torch$vtensor$shape$0xf32, !torch$vint) -> !torch$vint
    %size_2 = "torch.aten.size.int"(%arg0, %c2) : (!torch$vtensor$shape$0xf32, !torch$vint) -> !torch$vint

    %shape_tensor = "torch.aten._shape_as_tensor"(%arg0) : (!torch$vtensor$shape$0xf32) -> !torch$vtensor$shape$0xi64
    %shape_list = "torch.prim.ListConstruct"(%size_0, %size_1, %size_2) : (!torch$vint, !torch$vint, !torch$vint) -> !torch$vlist$0xi64

    %quantized_tensor = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %c0, %c1, %shape_list) : (!torch$vtensor$shape$0xf32, !torch$vint, !torch$vint, !torch$vlist$0xi64) -> !torch$vquantized$0xf32

    %added_tensor = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torch$vtensor$shape$0xf32, !torch$vtensor$shape$0xf32) -> !torch$vtensor$shape$0xf32

    "func.return"(%added_tensor) : (!torch$vtensor$shape$0xf32) -> ()
  }) : () -> ()
}) : () -> ()