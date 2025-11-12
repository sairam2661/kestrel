"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, i32) -> tensor<f32>, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: i32):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch bool
    
  
  
 	.
  
   	Here
  
   	: 	  
  
   	(  
  
   	)
  
   	%1
  
   	=
  
   	"torch.aten._make_per_tensor_quantized_tensor"
  
   	(%arg0, %arg1, %0)
  
   	:
  
   	(tensor<f32>, i32, !torch
 
   	)
  
   	->
  
   	!torch
 
   	%2
  
   	=
  
   	"torch.constant.float"() <{value = 3.141592653589793 : f64}> : () -> !torch float
   	.
   	Here
   	:
   	(
   	)
   	%3
   	=
   	"torch.prim.NumToTensor.Scalar"
   	(%arg1)
   	:
   	(i32)
   	->
   	tensor<i32>
   	%4
   	=
   	"torch.aten.slice.Tensor"
   	(%3, %2, %0, %0)
   	:
   	(tensor<i32>, !torch, !torch, !torch)
   	->
   	tensor<i32>
   	%5
   	=
   	"torch.aten.index_select"
   	(%arg0, %4, %2)
   	:
   	(tensor<f32>, tensor<i32>, !torch)
   	->
   	tensor<f32>
   	%6
   	=
   	"torch.aten.item"
   	(%5)
   	:
   	(tensor<f32>)
   	->
   	f32
   	"func.return"(%6) : (f32) -> ()
  }) : () -> (tensor<f32>, i32)
}) : () -> ()