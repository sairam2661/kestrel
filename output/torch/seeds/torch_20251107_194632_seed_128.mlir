"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi64>, sym_name = "tensor_tensor_add_mixed_types"}> ({
    ^bb0(%arg0: !torch,vector<4xi32>, 
            si32, 
            ui32, 
            i32, 
            f32, 
            f64, 
            si8, 
            ui8, 
            tensor<4xi32>, 
            tensor<4xi64>, 
            tensor<4xf32>, 
            tensor<4xf64>, 
            i64, 
            !torch,vector<4xi64> 
     ->  ()
  ) :
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch,vector<4xi64>
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch,vector<4xf64>
    %2 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch,vector<4xi32>, !torch,vector<4xi64>) -> !torch,vector<4xi64>
    %3 = "torch.aten.add.Tensor"(%arg1, %1) : (!torch,vector<4xi64>, !torch,vector<4xf64>) -> !torch,vector<4xf64>
    "func.return"(%2) : (!torch,vector<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()