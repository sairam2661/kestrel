"builtin.module"() ({
    "func.func"() <{function_type = (!torch_bool, !torch_float, !torch_int) -> (!torch_bool, !torch_float, !torch_int), sym_name = "fuzz_test"}> ({
        ^bb0(%arg0: !torch_bool, %arg1: !torch_float, %arg2: !torch_int):
            %0 = "torch.constant.str"() <{value = "fuzzing"}> : () -> !torch_str
            %1 = "torch.constant.none"() : () -> !torch_none
            %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
            %3 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
            %4 = "torch.prim.NumToTensor.Scalar"(%arg2) : (!torch_int) -> !torch_int
            %5 = "torch.aten.add.Tensor"(%arg1, %arg1) : (!torch_float, !torch_float) -> !torch_float
            %6 = "torch.aten.eq.Tensor"(%arg0, %2) : (!torch_bool, !torch_bool) -> !torch_bool
            "func.return"(%6, %5, %arg2) : (!torch_bool, !torch_float, !torch_int) -> ()
    }) : () -> ()
}) : () -> ()