"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "comprehensive_tensor_manipulations"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
    %1 = "torch.aten.view"(%0) <{sizes = dense<[4, 5, 6]> : tensor<3xi64>}> : (!torch_vtensor_2) -> !torch_vtensor_3
    %2 = "torch.aten.item"(%1) : (!torch_vtensor_3) -> !torch float
   	.region 0: 
     	!bb0 ^bb0(%arg2: !torch_float):
      	%3 = "arith.addf"(%arg2, %arg2) : (!torch_float, !torch_float) -> !torch_float
      	"scf.yield"(%3) : (!torch_float) -> ()
   	"scf.yield"(%2) : (!torch_float) -> ()
    "func.return"(%2) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()