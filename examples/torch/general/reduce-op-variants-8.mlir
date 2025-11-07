"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,5,5],f32>) -> !torch.vtensor<[1,1,5,5],f32>, sym_name = "scaled_dot_product_flash_attention_for_cpu"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,5,5],f32>, %arg1: !torch.vtensor<[1,1,5,5],f32>, %arg2: !torch.vtensor<[1,1,5,5],f32>):
    %0 = "torch.constant.float"() <{value = 0.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.constant.none"() : () -> !torch.none
    %4:2 = "torch.operator"(%arg0, %arg1, %arg2, %0, %1, %2, %3) <{name = "torch.aten._scaled_dot_product_flash_attention_for_cpu"}> : (!torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,5,5],f32>, !torch.float, !torch.bool, !torch.none, !torch.none) -> (!torch.vtensor<[1,1,5,5],f32>, !torch.vtensor<[1,1,5],f32>)
    "func.return"(%4#0) : (!torch.vtensor<[1,1,5,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

