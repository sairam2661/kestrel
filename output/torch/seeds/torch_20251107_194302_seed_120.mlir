"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<16xf32>, !torch,vector<16xf32>) -> !torch,vector<32xf32>, sym_name = "vector_add_multiply"}> ({
  ^bb0(%arg0: !torch,vector<16xf32>, 	!arg1
  -> !torch,vector<32xf32>):
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<16xf32>, !torch,vector<16xf32>) -> !torch,vector<16xf32>
    %3 = "torch.aten.slice.Tensor"(%2, %c0_i32, %c0_i32, %c8_i32) : (!torch,vector<16xf32>, i32, i32, i32) -> !torch,vector<8xf32>
    %4 = "torch.aten.slice.Tensor"(%2, %c0_i32, %c8_i32, %c8_i32) : (!torch,vector<16xf32>, i32, i32, i32) -> !torch,vector<8xf32>
    %5 = "torch.aten.view"(%3) : (!torch,vector<8xf32>) -> !torch,vector<16xf32>
    %6 = "torch.aten.view"(%4) : (!torch,vector<8xf32>) -> !torch,vector<16xf32>
    %7 = "torch.aten.add.Tensor"(%5, %6) : (!torch,vector<16xf32>, !torch,vector<16xf32>) -> !torch,vector<16xf32>
    "func.return"(%7) : (!torch,vector<16xf32>) -> ()
  }) : () -> ()
}) : () -> ()